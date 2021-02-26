AddCSLuaFile()

ENT.States[STATE_OFFLINE] = {
	SwitchTo = "SwitchToOffline"
}

function ENT:SwitchToOffline()
	self:ResetSequence("power_down_pose")
	self:EjectPlayer(true)
end
