DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.minispider"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.light")
end

ENT.Spawnable 				= true

ENT.Radius 					= 120
ENT.Height 					= 100

ENT.Model 					= Model("models/mechassault_2/bosses/minispider.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-300, 0, 100)

ENT.MaxHealth 				= 1012

ENT.WeaponLoadout = {
	{Type = "PlasmaPPC", Level = 1, Attachments = {3}},
	{Type = "Crossbow", Level = 1, Attachments = {1, 2}},
}

function ENT:GetAnimationSpeeds()
	return 120, 250
end

function ENT:GetSpeeds()
	return 300, 750
end

local function atan(a, b)
	return math.deg(math.atan2(a, b))
end

function ENT:GetSurfaceAngle(ang, fl, fr, bl, br)
	local p = self:WorldToLocal((fl + fr) / 2 - (bl + br) / 2 + self:GetPos())
	local r = self:WorldToLocal((fr + br) / 2 - (fl + bl) / 2 + self:GetPos())

	local ret = self:LocalToWorldAngles(Angle(atan(p.x, p.z) - 90, self:WorldToLocalAngles(ang).y, atan(-r.y, r.z) - 90))

	return ret
end

local function setZ(vec, z)
	return Vector(vec.x, vec.y, z)
end

local frontLeft = Angle(0, 45, 0):Forward()
local frontRight = Angle(0, -45, 0):Forward()
local backLeft = Angle(0, 135, 0):Forward()
local backRight = Angle(0, -135, 0):Forward()

function ENT:Move(mv)
	local ang = mv:GetMoveAngles()
	local pos = mv:GetOrigin()

	if mv:KeyDown(IN_WALK) then
		local forced = self:GetForcedAngle()

		forced = forced.r != 180 and forced or ang

		self:SetForcedAngle(forced)

		ang = forced
	else
		self:SetForcedAngle(Angle(0, 0, 180))
	end

	self:SetAimAngle(ang)

	if mv:KeyDown(IN_ATTACK) then
		self:Attack()
	end

	if mv:KeyDown(IN_ATTACK2) then
		self:SecondaryAttack()
	end

	self:UpdateWeapon(mv)

	mv:SetMoveAngles(ang)

	local vel = mv:GetVelocity()
	local speed, accel = self:GetSpeedData(mv)

	local func = function(vec)
		local ret = LocalToWorld(vec, angle_zero, pos + (vel * FrameTime()), mv:GetOldAngles())

		return ret
	end

	if accel > 0 then
		local aimPos = self:GetAimPos()
		local offset = WorldToLocal(aimPos, angle_zero, pos, mv:GetOldAngles())

		offset.z = 0
		offset:Normalize()

		local dir = Vector(mv:GetForwardSpeed(), -mv:GetSideSpeed(), 0):GetNormalized()

		offset:Rotate(dir:Angle())
		offset:Rotate(mv:GetOldAngles())
		offset:Normalize()
		offset:Mul(speed)

		vel:Approach(offset, accel * FrameTime())
	end

	local center = Vector()
	local max = 8

	for i = 1, max do
		local offset = 360 / max

		local pos1 = Angle(0, offset * i, 0):Forward() * self.Radius
		local pos2 = Angle(0, offset * i + 180, 0):Forward() * self.Radius

		local tr = self:GetSurfacePoint(func, pos1, setZ(pos2, -self.Height * 0.5))

		center = center + tr.HitPos
	end

	center = center / max

	local height = WorldToLocal(center, angle_zero, pos, mv:GetOldAngles())
	local newPos = pos
	local newAng = mv:GetOldAngles()

	if math.abs(height.z) < 50 then
		local surfAng = vel:Length() > 0 and vel:Angle() or mv:GetOldAngles()

		local fl = self:GetSurfacePoint(func, frontLeft * self.Radius, setZ(backRight * self.Radius, -self.Height * 0.5)).HitPos
		local fr = self:GetSurfacePoint(func, frontRight * self.Radius, setZ(backLeft * self.Radius, -self.Height * 0.5)).HitPos
		local bl = self:GetSurfacePoint(func, backLeft * self.Radius, setZ(frontRight * self.Radius, -self.Height * 0.5)).HitPos
		local br = self:GetSurfacePoint(func, backRight * self.Radius, setZ(frontLeft * self.Radius, -self.Height * 0.5)).HitPos

		surfAng = self:GetSurfaceAngle(surfAng, fl, fr, bl, br)

		newPos = pos + (vel * FrameTime())
		newPos = newPos + (surfAng:Up() * height.z)

		newAng = surfAng

		debugoverlay.Cross(newPos, 5, debugTime, Color(255, 0, 0), true)
	else
		local surfAng = mv:GetOldAngles()

		surfAng:Approach(Angle(0, surfAng.y, 0), 180 * FrameTime())

		newPos = pos + physenv.GetGravity() * FrameTime()
		newAng = surfAng
	end

	mv:SetOrigin(newPos)
	mv:SetOldAngles(newAng)
	mv:SetVelocity(vel)
end
