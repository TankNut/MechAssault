AddCSLuaFile()

function ENT:UpdateAnimation()
	local ply = self:GetPlayer()
	local sequence

	if IsValid(ply) and self:AllowInput() then
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

		self:SetPoseParameter("move_x", self:GetFallTimer() != 0 and 0 or mrate)
		self:SetPlaybackRate(self:GetFallTimer() != 0 and 0 or arate)

		if self:GetFallTimer() != 0 then
			self:SetLayerWeight(0, 1)
		else
			self:SetLayerWeight(0, 0)
		end

		if sequence != self:GetSequenceName(self:GetSequence()) then
			self:ResetSequence(sequence)
		end
	end

	self:UpdateAimAngle()
end

function ENT:UpdateAimAngle()
	local ply = self:GetPlayer()
	local yaw = 0

	if IsValid(ply) and self:AllowInput() then
		local offset = self:WorldToLocal(self:GetAimPos())

		offset.z = 0
		offset:Normalize()

		yaw = math.NormalizeAngle(offset:Angle().y)
	end

	self:SetPoseParameter("aim_yaw", yaw)
end
