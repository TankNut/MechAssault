AddCSLuaFile()

local debugTime = engine.TickInterval() * 2

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

local function setZ(vec, z)
	return Vector(vec.x, vec.y, z)
end

function ENT:GetSurfacePoint(vel, func, start, endpos)
	local tr
	local trace = {
		mask = MASK_PLAYERSOLID,
		filter = function(ent)
			return ent:IsWorld() or (ent != self and scripted_ents.IsTypeOf(ent:GetClass(), "mechassault_base"))
		end
	}

	trace.start = func(Vector(0, 0, self.Height * 0.5))
	trace.endpos = func(start)

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, debugTime, color_white, true)

	if not self.Spider and tr.Hit then
		local forwardDot = tr.HitNormal:Dot(vel:GetNormalized())
		local upDot = tr.HitNormal:Dot(Vector(0, 0, 1))
		local heightDiff = tr.HitPos.z - func(start).z

		if math.deg(upDot) < 30 and heightDiff > 10 and forwardDot < 0 then
			debugoverlay.Cross(tr.HitPos, 10, debugTime, Color(0, 0, 255), true)

			local dir = vel:GetNormalized() - (tr.HitNormal * vel:GetNormalized():Dot(tr.HitNormal))

			dir.z = 0

			return tr.HitPos, dir * vel:Length()
		end
	end

	if tr.Hit then
		return tr.HitPos
	end

	trace.start = func(start)
	trace.endpos = func(endpos)

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, debugTime, color_white, true)

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

	local traces = {}
	local center = Vector()
	local max = 8

	for i = 1, max do
		local offset = 360 / max

		local pos1 = Angle(0, offset * i, 0):Forward() * self.Radius
		local pos2 = Angle(0, offset * i + 180, 0):Forward() * self.Radius

		local hitPos, newVel = self:GetSurfacePoint(vel, func, pos1, setZ(pos2, -self.HullMax.z * 0.5))

		if newVel then
			vel = newVel
		end

		traces[i] = hitPos

		center = center + traces[i]
	end

	center = center / max

	local height = WorldToLocal(center, angle_zero, pos, mv:GetOldAngles())
	local newPos = pos
	local newAng = mv:GetOldAngles()

	if math.abs(height.z) < 50 then
		local surfAng = vel:Length() > 0 and vel:Angle() or mv:GetOldAngles()

		if self.Spider then
			local fl = self:GetSurfacePoint(vel, func, frontLeft * self.Radius, setZ(backRight * self.Radius, -self.HullMax.z * 0.5))
			local fr = self:GetSurfacePoint(vel, func, frontRight * self.Radius, setZ(backLeft * self.Radius, -self.HullMax.z * 0.5))
			local bl = self:GetSurfacePoint(vel, func, backLeft * self.Radius, setZ(frontRight * self.Radius, -self.HullMax.z * 0.5))
			local br = self:GetSurfacePoint(vel, func, backRight * self.Radius, setZ(frontLeft * self.Radius, -self.HullMax.z * 0.5))

			surfAng = self:GetSurfaceAngle(surfAng, fl, fr, bl, br)
		end

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

function ENT:FinishMove(mv)
	local pos = mv:GetOrigin()

	self:SetNetworkOrigin(pos)
	self:SetAngles(mv:GetOldAngles())

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
