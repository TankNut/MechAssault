AddCSLuaFile()

function ENT:SwitchToOffline()
	self:SetSequence("getup")
	self:SetPlaybackRate(0)
	self:EjectPlayer(true)
end

function ENT:SwitchToPowerdown()
	self:EmitSound("mechassault_2/mechs/battlearmor/battlearmor_exit.ogg")

	self:SetSequence("getup")

	if self:SequenceDuration("getup") == 0 then
		self:SetState(STATE_OFFLINE)

		return
	end

	self:SetCycle(1)
	self:SetPlaybackRate(-self.StandRate)

	self:SetStateTimer(CurTime() + self:SequenceDuration() / self.StandRate)
end

function ENT:SwitchToPowerup()
	self:EmitSound("mechassault_2/mechs/battlearmor/battlearmor_enter.ogg")

	self:SetCycle(0)
	self:SetSequence("getup")
	self:SetPlaybackRate(self.StandRate)

	self:SetStateTimer(CurTime() + self:SequenceDuration() / self.StandRate)
end
