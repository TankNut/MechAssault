AddCSLuaFile()

ENT.WeaponTypes.PulseLaser = {
	Name = "Pulse Laser",
	Type = "Energy",
	Function = "FirePulseLaser",
	Cooldown = {0.25, 0.2, 0.15},
	Class = {
		"ma2_proj_pulselaser_lvl1",
		"ma2_proj_pulselaser_lvl2",
		"ma2_proj_pulselaser_lvl3"
	},
	Effect = {
		"gm_MA2_muzzleflash_laser_lvl1",
		"gm_MA2_muzzleflash_laser_lvl2",
		"gm_MA2_muzzleflash_laser_lvl3"
	},
	MaxLevel = 3
}

PrecacheParticleSystem("gm_MA2_muzzleflash_laser_lvl1")
PrecacheParticleSystem("gm_MA2_muzzleflash_laser_lvl2")
PrecacheParticleSystem("gm_MA2_muzzleflash_laser_lvl3")

function ENT:FirePulseLaser(tbl, level, attachments)
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

	self:SetNextAttack(CurTime() + tbl.Cooldown[level])
end