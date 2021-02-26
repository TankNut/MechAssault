AddCSLuaFile()

ENT.States[STATE_POWERDOWN] = {
	SwitchTo = "SwitchToPowerdown",
	TimerFinished = "PowerdownTimer"
}

function ENT:SwitchToPowerdown()
	self:EmitSound("mechassault_2/mechs/mech_exit.ogg")

	if self:SequenceDuration("power_down") == 0 then
		self:SetState(STATE_OFFLINE)

		return
	end

	self:SetCycle(0)
	self:SetSequence("power_down")
	self:SetPlaybackRate(self.StandRate)

	self:SetStateTimer(CurTime() + self:SequenceDuration() / self.StandRate)
end

function ENT:PowerdownTimer()
	self:SetState(STATE_OFFLINE)
end
