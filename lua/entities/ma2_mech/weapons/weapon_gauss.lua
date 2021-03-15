AddCSLuaFile()

ENT.WeaponTypes.Gauss = {
	Name = "Gauss",
	Type = "Ballistic",
	Function = "FireGauss",
	Cooldown = 2.5,
	Class = {
		"ma2_proj_gauss_lvl1",
		"ma2_proj_gauss_lvl2",
		"ma2_proj_gauss_lvl3"
	},
	Effect = {
		"gm_MA2_muzzleflash_Gauss_lvl1",
		"gm_MA2_muzzleflash_Gauss_lvl2",
		"gm_MA2_muzzleflash_Gauss_lvl3"
	},
	MaxLevel = 3
}

PrecacheParticleSystem("gm_MA2_muzzleflash_Gauss_lvl1")
PrecacheParticleSystem("gm_MA2_muzzleflash_Gauss_lvl2")
PrecacheParticleSystem("gm_MA2_muzzleflash_Gauss_lvl3")

function ENT:FireGauss(tbl, level, attachments)
	for _, v in ipairs(attachments) do
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

	self:SetNextAttack(CurTime() + tbl.Cooldown)
end
