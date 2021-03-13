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

function ENT:GetSurfacePoint(func, start, endpos)
	local tr
	local trace = {
		mask = MASK_PLAYERSOLID,
		filter = function(ent)
			return ent != self and ent:GetOwner() != self
		end
	}

	trace.start = func(Vector(0, 0, self.Height * 0.5))
	trace.endpos = func(start)

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, debugTime, color_white, true)

	if tr.Hit or not endpos then
		return tr
	end

	trace.start = func(start)
	trace.endpos = func(endpos)

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, debugTime, color_white, true)

	return tr
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

	local center
	local height

	local newPos

	local mins = Vector(-self.Radius, -self.Radius, self.StepHeight)
	local maxs = Vector(self.Radius, self.Radius, self.Height)

	for i = 1, 8 do
		center = self:GetSurfacePoint(func, setZ(vector_origin, -50)).HitPos
		height = WorldToLocal(center, angle_zero, pos, mv:GetOldAngles())

		newPos = pos + (vel * FrameTime()) + Vector(0, 0, height.z)

		local tr = util.TraceHull({
			start = pos,
			endpos = newPos,
			mins = mins,
			maxs = maxs,
			mask = MASK_PLAYERSOLID,
			filter = function(ent)
				return ent != self and ent:GetOwner() != self
			end
		})

		debugoverlay.SweptBox(tr.StartPos, tr.HitPos, mins, maxs, angle_zero, debugTime, color_white)

		if tr.Fraction == 1 then
			break
		end

		local dir = vel:GetNormalized() - (tr.HitNormal * vel:GetNormalized():Dot(tr.HitNormal))

		dir.z = 0

		vel = dir * vel:Length()
	end

	local newAng = mv:GetOldAngles()

	if math.abs(height.z) < 20 then
		newAng = vel:Length() > 0 and vel:Angle() or mv:GetOldAngles()
	else
		newAng = mv:GetOldAngles()
		newAng:Approach(Angle(0, newAng.y, 0), 180 * FrameTime())

		newPos = pos + physenv.GetGravity() * FrameTime()
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

		ang.r = 0

		view.origin = tr.HitPos
		view.angles = ang
	end

	function ENT:CalcView(ply, view)
		self:HandleThirdPersonView(ply, view)
	end
end
