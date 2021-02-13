AddCSLuaFile()

function ENT:TraceHull(start, endpos)
	return util.TraceHull({
		start = start,
		endpos = endpos,
		mins = self.HullMin,
		maxs = self.HullMax,
		mask = MASK_PLAYERSOLID,
		filter = {self}
	})
end

function ENT:CheckStep()
	local endPos = self.MoveStepData.Start + (self.MoveStepData.Dir * self.MoveStepData.Size)

	local hitNormal -- Used to indicate move reject and used to adjust self.MoveStepData.Dir

	-- There isn't much in terms of z movement, so don't bother
	local stepStart = Vector(self.MoveStepData.Start.x, self.MoveStepData.Start.y, self.MoveStepData.Start.z + MOVE_HEIGHT_EPSILON)
	local stepEnd = Vector(endPos.x, endPos.y, self.MoveStepData.Start.z + MOVE_HEIGHT_EPSILON)

	local trace = self:TraceHull(stepStart, stepEnd) -- Try to move to our target

	if trace.Fraction != 1 then -- Hit something
		local stepTrace = self:TraceHull(trace.HitPos, trace.HitPos + Vector(0, 0, LOCAL_STEP_HEIGHT)) -- Blindly step up and continue from wherever we landed

		stepStart = stepTrace.HitPos
		stepEnd.z = stepStart.z -- Make sure we're still moving on a plane

		stepTrace = self:TraceHull(stepStart, stepEnd) -- Try the same move again from the new vertical pos

		if stepTrace.Fraction <= 0.01 then -- Still can't move
			hitNormal = stepTrace.HitNormal
		else -- We've moved up a step, check if we've moved far enough to be considered 'valid' (Don't move up 1 unit edges) 
			local width = (self.HullMax.x - self.HullMin.x) * 0.3333333
			local dist = (stepEnd - stepStart):Length2DSqr()
			local requiredDist = width * width

			if dist < requiredDist then -- Not far enough, but we might be able to cheat it
				local landingTrace = self:TraceHull(stepStart, stepStart + (self.MoveStepData.Dir * width)) -- Can we cheat, move a bit further than normal and still make it?

				if landingTrace.Fraction < 1 then -- No
					hitNormal = landingTrace.HitNormal
				end
			elseif (stepTrace.HitPos - stepStart):Length2DSqr() < requiredDist then -- Nope
				hitNormal = stepTrace.HitNormal
			end
		end

		if not hitNormal then -- No rejections, pretend our stepped up trace was in use all along
			trace = stepTrace
		end

		if trace.Fraction < 1 then
			hitNormal = trace.HitNormal
		end
	end

	-- Arrived at our target, try to step down to be flush with the ground

	stepStart = Vector(stepEnd)
	stepEnd.z = self.MoveStepData.Start.z - LOCAL_STEP_HEIGHT - MOVE_HEIGHT_EPSILON

	trace = self:TraceHull(stepStart, stepEnd)

	if trace.Fraction == 1 then
		return false -- Don't step too far down
	end

	if trace.HitPos.z - self.MoveStepData.Start.z > LOCAL_STEP_HEIGHT * 0.5 and trace.Entity:IsWorld() and math.abs(trace.HitNormal:Dot(Vector(1, 0, 0))) > 0.4 then
		return false -- Stepped up a fairly steep hill, don't
	end

	local result = {
		Pos = trace.HitPos + Vector(0, 0, MOVE_HEIGHT_EPSILON),
		HitNormal = hitNormal
	}

	return true, result
end

function ENT:TestGroundMove(start, dir, dist)
	local pos = start
	local cleared = 0

	self.MoveStepData = {
		Start = start,
		Dir = dir,
		Size = 0
	}

	while true do
		self.MoveStepData.Size = math.min(LOCAL_STEP_SIZE, dist - cleared) -- Max step size of 16

		-- Moved far enough
		if self.MoveStepData.Size < 0.001 then
			break
		end

		for i = 1, 16 do
			local ok, result = self:CheckStep()

			if not ok then
				break
			end

			if not result.HitNormal then
				pos = result.Pos

				break
			end

			self.MoveStepData.Dir = self.MoveStepData.Dir - (result.HitNormal * dir:Dot(result.HitNormal))
		end

		cleared = cleared + self.MoveStepData.Size
	end

	return pos
end