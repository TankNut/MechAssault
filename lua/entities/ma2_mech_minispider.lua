DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Mini Spider"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.HullMin 				= Vector(-80, -80, 0)
ENT.HullMax 				= Vector(80, 80, 100)

ENT.Model 					= Model("models/mechassault_2/bosses/minispider.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-300, 0, 100)

ENT.MaxHealth 				= 1012

ENT.Spider 					= true

ENT.WeaponLoadout = {
	{Type = "Crossbow", Level = 1, Attachments = {1, 2}},
}

function ENT:GetAnimationSpeeds()
	return 120, 250
end

function ENT:GetSpeeds()
	return 300, 750
end

function ENT:GetSurfacePoint(center, start, endpos)
	local tr
	local trace = {
		mask = MASK_PLAYERSOLID,
		filter = function(ent)
			return ent:IsWorld() or (ent != self and scripted_ents.IsTypeOf(ent:GetClass(), "mechassault_base"))
		end
	}

	trace.start = center
	trace.endpos = start

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, 1, color_white, true)

	if tr.Hit then
		return tr.HitPos
	end

	trace.start = start
	trace.endpos = endpos

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, 1, color_white, true)

	return tr.HitPos
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

function ENT:StartMove(ply, mv, cmd)
	mv:SetOrigin(self:GetNetworkOrigin())
	mv:SetVelocity(self:GetMoveSpeed())
	mv:SetOldAngles(self:GetAngles())

	local wheel = cmd:GetMouseWheel()

	if wheel != 0 then
		self:SwitchWeapon(wheel)
	end

	local dot = self:GetUp():Dot(self:GetAimAngle():Up())

	if (mv:KeyPressed(IN_MOVELEFT) or mv:KeyPressed(IN_MOVERIGHT)) then
		self:SetFlippedMode(dot < 0)
	end

	if self:GetFlippedMode() then
		mv:SetSideSpeed(-mv:GetSideSpeed())
	end

	return mv:KeyPressed(IN_USE)
end

local function setZ(vec, z)
	return Vector(vec.x, vec.y, z)
end

local frontLeft = Vector(ENT.HullMax.x, ENT.HullMax.y, 0)
local frontRight = Vector(ENT.HullMax.x, ENT.HullMin.y, 0)
local backLeft = Vector(ENT.HullMin.x, ENT.HullMax.y, 0)
local backRight = Vector(ENT.HullMin.x, ENT.HullMin.y, 0)

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

	local function LocalToWorldMove(vec)
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

	local wCenter = LocalToWorldMove(self:OBBCenter())

	local traces = {}
	local center = Vector()
	local max = 8

	for i = 1, max do
		local offset = 360 / max

		local pos1 = Angle(0, offset * i, 0):Forward() * 80
		local pos2 = Angle(0, offset * i + 180, 0):Forward() * 80

		traces[i] = self:GetSurfacePoint(wCenter, LocalToWorldMove(pos1), LocalToWorldMove(setZ(pos2, -self.HullMax.z * 0.5)))
		center = center + traces[i]
	end

	center = center / max

	local fl = self:GetSurfacePoint(wCenter, LocalToWorldMove(setZ(frontLeft, 0)), LocalToWorldMove(setZ(backRight, -self.HullMax.z * 0.5)))
	local fr = self:GetSurfacePoint(wCenter, LocalToWorldMove(setZ(frontRight, 0)), LocalToWorldMove(setZ(backLeft, -self.HullMax.z * 0.5)))
	local bl = self:GetSurfacePoint(wCenter, LocalToWorldMove(setZ(backLeft, 0)), LocalToWorldMove(setZ(frontRight, -self.HullMax.z * 0.5)))
	local br = self:GetSurfacePoint(wCenter, LocalToWorldMove(setZ(backRight, 0)), LocalToWorldMove(setZ(frontLeft, -self.HullMax.z * 0.5)))

	local height = WorldToLocal(center, angle_zero, pos, mv:GetOldAngles())
	local newPos = pos
	local newAng = mv:GetOldAngles()

	if math.abs(height.z) < 50 then
		local refAng = vel:Length() > 0 and vel:Angle() or mv:GetOldAngles()
		local surfAng = self:GetSurfaceAngle(refAng, fl, fr, bl, br)

		newPos = pos + (vel * FrameTime())
		newPos = newPos + (surfAng:Up() * height.z)

		newAng = surfAng

		debugoverlay.Cross(newPos, 5, 1, Color(255, 0, 0), true)
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

function ENT:FinishMove(mv)
	local pos = mv:GetOrigin()

	self:SetNetworkOrigin(pos)
	self:SetAngles(mv:GetOldAngles())

	self:SetMoveSpeed(mv:GetVelocity())

	local walk = self:GetSpeeds()

	self:SetRunning(mv:GetVelocity():Length() > walk * self.Margin)
end
