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

	if mv:KeyPressed(IN_ATTACK2) then
		self:SecondaryAttack()
	end

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

function ENT:FinishMove(mv)
	local ang = mv:GetMoveAngles()

	ang.p = 0

	self:SetNetworkOrigin(mv:GetOrigin())

	if self:HasMoveInput(mv) then
		self:SetAngles(mv:GetVelocity():Angle())
	end

	self:SetMoveSpeed(mv:GetVelocity())

	local walk = self:GetSpeeds()

	self:SetRunning(mv:GetVelocity():Length() > walk * self.Margin)

	if SERVER then
		local phys = self:GetPhysicsObject()

		if IsValid(phys) then
			phys:EnableMotion(true)

			phys:SetPos(mv:GetOrigin())
			phys:Wake()

			phys:EnableMotion(false)
		end
	end
end

function ENT:StopDriving(ply)
	self:SetMoveSpeed(vector_origin)
	self:SetState(STATE_POWERDOWN)
end

if CLIENT then
	function ENT:HandleThirdPersonView(ply, view)
		local ang = ply:EyeAngles()
		local pos = self:WorldSpaceCenter()

		local target = LocalToWorld(self.ViewOffset, angle_zero, pos, ang)

		local tr = util.TraceHull({
			start = pos,
			endpos = target,
			mins = Vector(-2, -2, -2),
			maxs = Vector(2, 2, 2),
			mask = MASK_SOLID_BRUSHONLY
		})

		view.origin		= tr.HitPos
		view.angles		= ang
	end

	function ENT:CalcView(ply, view)
		self:HandleThirdPersonView(ply, view)
	end
end