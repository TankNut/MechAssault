AddCSLuaFile()

function ENT:UpdateAnimation()
	local ply = self:GetPlayer()

	local sequence
	local yaw = 0

	if IsValid(ply) and self:AllowInput() then
		local offset = self:WorldToLocal(self:GetAimPos())

		offset.z = 0
		offset:Normalize()

		yaw = math.NormalizeAngle(offset:Angle().y)
		sequence = self:GetRunning() and "run" or "walk"

		local walk, run = self:GetSpeeds()
		local awalk, arun = self:GetAnimationSpeeds()
		local vel = self:GetMoveSpeed():Length()

		local running = self:GetRunning()
		local arate, mrate

		if running then
			arate = vel / arun
			mrate = vel / run
		else
			arate = vel / awalk
			mrate = vel / walk
		end

		self:SetPoseParameter("move_x", mrate)
		self:SetPlaybackRate(arate)

		if sequence != self:GetSequenceName(self:GetSequence()) then
			self:ResetSequence(sequence)
		end
	end

	self:SetPoseParameter("aim_yaw", yaw)
end
