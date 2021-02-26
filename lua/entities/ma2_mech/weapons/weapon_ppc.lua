AddCSLuaFile()

ENT.WeaponTypes.PPC = {
	Name = "PPC",
	Type = "Energy",
	Function = "PrimePPC",
	Succeed = "FirePPC",
	Abort = "AbortPPC",
	ChargeTimer = 2.32,
	Class = {
		"ma2_proj_ppc_lvl1",
		"ma2_proj_ppc_lvl2",
		"ma2_proj_ppc_lvl3"
	},
	Effect = {
		"gm_MA2_muzzleflash_PPC_lvl1",
		"gm_MA2_muzzleflash_PPC_lvl2",
		"gm_MA2_muzzleflash_PPC_lvl3"
	},
	ChargingEffect = {
		"gm_MA2_PPC_lvl1_charging",
		"gm_MA2_PPC_lvl2_charging",
		"gm_MA2_PPC_lvl3_charging"
	},
	ChargeSound = Sound("MA2_Weapon.PPCCharging"),
	ChargeLoop = Sound("MA2_Weapon.PPCChargeLoop"),
	MaxLevel = 3
}

PrecacheParticleSystem("gm_MA2_muzzleflash_PPC_lvl1")
PrecacheParticleSystem("gm_MA2_muzzleflash_PPC_lvl2")
PrecacheParticleSystem("gm_MA2_muzzleflash_PPC_lvl3")

PrecacheParticleSystem("gm_MA2_PPC_lvl1_charging")
PrecacheParticleSystem("gm_MA2_PPC_lvl2_charging")
PrecacheParticleSystem("gm_MA2_PPC_lvl3_charging")

function ENT:PrimePPC(tbl, level, attachments)
	if self:GetWeaponTimer() == 0 then
		self:EmitSound(tbl.ChargeSound)
		self:EmitSound(tbl.ChargeLoop)

		self:SetWeaponTimer(CurTime() + tbl.ChargeTimer)

		for _, v in ipairs(attachments) do
			ParticleEffectAttach(tbl.ChargingEffect[level], PATTACH_POINT_FOLLOW, self, v)
		end
	end
end

function ENT:AbortPPC(tbl, level, attachments)
	self:StopSound(tbl.ChargeSound)
	self:StopSound(tbl.ChargeLoop)

	if CLIENT then
		self:StopParticlesNamed(tbl.ChargingEffect[level])
	elseif game.SinglePlayer() then
		net.Start("nMAStopPPC")
			net.WriteEntity(self)
			net.WriteString(tbl.ChargingEffect[level])
		net.Broadcast()
	end
end

function ENT:FirePPC(tbl, level, attachments)
	self:StopSound(tbl.ChargeSound)
	self:StopSound(tbl.ChargeLoop)

	if CLIENT then
		self:StopParticlesNamed(tbl.ChargingEffect[level])
	elseif game.SinglePlayer() then
		net.Start("nMAStopPPC")
			net.WriteEntity(self)
			net.WriteString(tbl.ChargingEffect[level])
		net.Broadcast()
	end

	for k, v in ipairs(attachments) do
		local attachment = self:GetAttachment(v)

		ParticleEffectAttach(tbl.Effect[level], PATTACH_POINT_FOLLOW, self, v)

		if SERVER then
			local ent = ents.Create(tbl.Class[level])
			local ang = (self:GetAimPos() - attachment.Pos):Angle()

			ent:SetPos(attachment.Pos)
			ent:SetAngles(ang)
			ent:SetOwner(self)
			ent.Player = self:GetPlayer()

			ent:Spawn()
			ent:Activate()
		end
	end
end