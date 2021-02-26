AddCSLuaFile()

function ENT:GetStateTable(state)
	return self.States[state or self:GetCurrentState()]
end

function ENT:SetState(state)
	local currentState = self:GetStateTable()

	if currentState then
		self:Invoke(currentState.SwitchFrom)
	end

	self:SetStateTimer(0)
	self:SetCurrentState(state)

	local newState = self:GetStateTable(state)

	if newState then
		self:Invoke(newState.SwitchTo)
	end
end

function ENT:UpdateState()
	local state = self:GetStateTable()

	if state then
		local time = self:GetStateTimer()

		if time > 0 and time <= CurTime() then
			self:Invoke(state.TimerFinished)

			self:SetStateTimer(0)
		end

		self:Invoke(state.Think)
	end
end
