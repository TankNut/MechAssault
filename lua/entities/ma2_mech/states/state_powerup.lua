AddCSLuaFile()

ENT.States[STATE_POWERUP] = {
	SwitchTo = "SwitchToPowerup",
	TimerFinished = "PowerupTimer"
}

function ENT:SwitchToPowerup()
	self:EmitSound("mechassault_2/mechs/mech_start.ogg")

	self:SetCycle(0)
	self:SetSequence("power_up")
	self:SetPlaybackRate(self.StandRate)

	self:SetStateTimer(CurTime() + self:SequenceDuration() / self.StandRate)
end

function ENT:PowerupTimer()
	self:SetState(STATE_ACTIVE)
end
