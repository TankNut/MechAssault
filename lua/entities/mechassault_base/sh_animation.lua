AddCSLuaFile()

function ENT:UpdateAnimation()
	local yaw = math.NormalizeAngle(self:GetAimAngle().y - self:GetAngles().y)

	self:SetPoseParameter("aim_yaw", yaw)
	self:SetPoseParameter("move_y", 0)

	local walk, run = self:GetSpeeds()
	local awalk, arun = self:GetAnimationSpeeds()
	local vel = self:GetMoveSpeed():Length()

	local arate, mrate

	local running = self:GetRunning()

	if running then
		arate = vel / arun
		mrate = vel / run
	else
		arate = vel / awalk
		mrate = vel / walk
	end

	self:SetPoseParameter("move_x", mrate)
	self:SetPlaybackRate(arate)

	local sequence = self:GetRunning() and self:LookupSequence("run") or self:LookupSequence("walk")

	self:ResetSequence(sequence)
end