AddCSLuaFile()

ENT.WeaponTypes.Gauss = {
	Name = "mechassault.weapon.gauss",
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
			local target = self:GetTargetLock()

			local ent = ents.Create(tbl.Class[level])
			local ang

			if IsValid(target) then
				ang = self:GetTargetLead(target, attachment.Pos, ent.Velocity)
			else
				ang = (self:GetAimPos() - attachment.Pos):Angle()
			end

			ent:SetPos(attachment.Pos)
			ent:SetAngles(ang)
			ent:SetOwner(self)
			ent.Player = self:GetPlayer()

			ent:Spawn()
			ent:Activate()
		end

		if not self:TakeAmmo() then
			return
		end
	end

	self:SetNextAttack(CurTime() + tbl.Cooldown)
end
