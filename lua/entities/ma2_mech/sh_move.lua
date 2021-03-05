AddCSLuaFile()

function ENT:HasMoveInput(mv)
	return mv:GetForwardSpeed() != 0 or mv:GetSideSpeed() != 0
end

function ENT:GetSpeeds()
	return 300, 600
end

function ENT:GetAnimationSpeeds()
	return 200, 350
end

function ENT:GetSpeedData(mv)
	local length = mv:GetVelocity():Length()

	local walk, run = self:GetSpeeds()

	local speed = 0
	local accel = 0

	if self:HasMoveInput(mv) then
		speed = mv:KeyDown(IN_SPEED) and run or walk
		accel = mv:KeyDown(IN_SPEED) and run or (length > walk * self.Margin and run or walk)
	else
		speed = 0
		accel = self:GetRunning() and run or walk
	end

	return speed, accel + 1000
end

function ENT:StartMove(ply, mv, cmd)
	mv:SetOrigin(self:GetNetworkOrigin())
	mv:SetVelocity(self:GetMoveSpeed())
	mv:SetOldAngles(self:GetAngles())

	local wheel = cmd:GetMouseWheel()

	if wheel != 0 then
		self:SwitchWeapon(wheel)
	end

	return mv:KeyPressed(IN_USE)
end

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

	if accel > 0 then
		local dir = Angle(ang)

		dir.p = 0

		local target = Vector(mv:GetForwardSpeed(), -mv:GetSideSpeed(), 0):GetNormalized()

		target:Rotate(dir)
		target:Mul(speed)

		vel:Approach(target, accel * FrameTime())
	end

	mv:SetOrigin(self:TestGroundMove(pos, vel:GetNormalized(), vel:Length() * FrameTime()))
	mv:SetVelocity(vel)
end

function ENT:GetSurfacePoint(start, endpos)
	local tr
	local trace = {
		mask = MASK_PLAYERSOLID,
		filter = function(ent)
			return ent:IsWorld() or (ent != self and scripted_ents.IsTypeOf(ent:GetClass(), "mechassault_base"))
		end
	}

	trace.start = self:WorldSpaceCenter()
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

	local ret = self:LocalToWorldAngles(Angle(atan(p.x, p.z) - 90, 0, atan(-r.y, r.z) - 90))

	ret.y = ang.y

	return ret
end

local function setZ(vec, z)
	return Vector(vec.x, vec.y, z)
end

local frontLeft = Vector(ENT.HullMax.x, ENT.HullMax.y, MOVE_HEIGHT_EPSILON)
local frontRight = Vector(ENT.HullMax.x, ENT.HullMin.y, MOVE_HEIGHT_EPSILON)
local backLeft = Vector(ENT.HullMin.x, ENT.HullMax.y, MOVE_HEIGHT_EPSILON)
local backRight = Vector(ENT.HullMin.x, ENT.HullMin.y, MOVE_HEIGHT_EPSILON)

function ENT:FinishMove(mv)
	local pos = mv:GetOrigin()

	self:SetNetworkOrigin(pos)

	if self:HasMoveInput(mv) then
		local ang = mv:GetVelocity():Angle()

		if self.Spider then
			local fl = self:GetSurfacePoint(self:LocalToWorld(frontLeft), self:LocalToWorld(setZ(backRight, -self.HullMax.z)))
			local fr = self:GetSurfacePoint(self:LocalToWorld(frontRight), self:LocalToWorld(setZ(backLeft, -self.HullMax.z)))
			local bl = self:GetSurfacePoint(self:LocalToWorld(backLeft), self:LocalToWorld(setZ(frontRight, -self.HullMax.z)))
			local br = self:GetSurfacePoint(self:LocalToWorld(backRight), self:LocalToWorld(setZ(frontLeft, -self.HullMax.z)))

			ang = self:GetSurfaceAngle(ang, fl, fr, bl, br)
		end

		self:SetAngles(ang)
	end

	self:SetMoveSpeed(mv:GetVelocity())

	local walk = self:GetSpeeds()

	self:SetRunning(mv:GetVelocity():Length() > walk * self.Margin)
end

function ENT:StopDriving()
	self:AbortWeaponTimer()

	self:SetMoveSpeed(vector_origin)
	self:SetState(STATE_POWERDOWN)
end

if CLIENT then
	function ENT:HandleThirdPersonView(ply, view)
		local ang = ply:EyeAngles()
		local pos = self:GetAimOrigin()

		local target = LocalToWorld(Vector(self.ViewOffset.x, 0, 0), angle_zero, pos, ang)

		local tr = util.TraceHull({
			start = pos,
			endpos = target,
			mins = Vector(-2, -2, -2),
			maxs = Vector(2, 2, 2),
			mask = MASK_SOLID_BRUSHONLY
		})

		view.origin = tr.HitPos
		view.angles = ang
	end

	function ENT:CalcView(ply, view)
		self:HandleThirdPersonView(ply, view)
	end
end
