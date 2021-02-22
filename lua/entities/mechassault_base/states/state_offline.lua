AddCSLuaFile()

ENT.States[STATE_OFFLINE] = {
	SwitchTo = "SwitchToOffline"
}

function ENT:SwitchToOffline()
	self:ResetSequence("power_down_pose")

	local ply = self:GetPlayer()

	if IsValid(ply) then
		ply:SetNWEntity("mechassault", NULL)
		ply:SetObserverMode(OBS_MODE_NONE)

		if SERVER then
			ply:ExitVehicle()
		end

		local ang = Angle(0, self:GetAngles().y, 0)

		ply:SetPos(self:GetPos())
		ply:SetAngles(ang)
		ply:SetEyeAngles(ang)
	end

	self:SetPlayer(NULL)
end