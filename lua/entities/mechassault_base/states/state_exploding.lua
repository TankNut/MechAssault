AddCSLuaFile()

ENT.States[STATE_EXPLODING] = {
	SwitchTo = "SwitchToExploding",
	TimerFinished = "ExplodingTimer"
}

PrecacheParticleSystem("gm_MA2_mech_explosion_rays")
PrecacheParticleSystem("gm_MA2_explosion_mech")

function ENT:SwitchToExploding()
	self:EmitSound(table.Random({"mechassault_2/mechs/mech_explode1.ogg", "mechassault_2/mechs/mech_explode2.ogg"}), 511, 100, 2)
	self:ResetSequence("fall_forward")
	self:SetCycle(0)
	self:SetPlaybackRate(1)

	ParticleEffectAttach("gm_MA2_mech_explosion_rays", PATTACH_POINT_FOLLOW, self, 9)

	self:SetStateTimer(CurTime() + 1.5)
end

function ENT:ExplodingTimer()
	ParticleEffect("gm_MA2_explosion_mech", self:GetPos(), self:GetAngles())

	if SERVER then
		SafeRemoveEntity(self)
	end
end