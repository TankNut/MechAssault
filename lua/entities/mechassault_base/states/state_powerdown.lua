AddCSLuaFile()

ENT.States[STATE_POWERDOWN] = {
	SwitchTo = "SwitchToPowerdown",
	Think = "ThinkPowerdown"
}

function ENT:SwitchToPowerdown()
	self:EmitSound("MECHASSAULT_2/mech_exit.ogg")

	self:SetCycle(0)
	self:SetSequence("power_down")
	self:SetPlaybackRate(self.StandRate)

	self:SetStateTimer(CurTime() + self:SequenceDuration() / self.StandRate)
end

function ENT:ThinkPowerdown()
	if self:GetStateTimer() <= CurTime() then
		self:SetState(STATE_OFFLINE)
	end
end