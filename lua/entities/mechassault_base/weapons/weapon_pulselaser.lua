AddCSLuaFile()

ENT.WeaponTypes.PulseLaser = {
	Type = "Energy",
	Function = "FirePulseLaser",
	Cooldown = {0.25, 0.2, 0.15},
	Class = {
		"mechassault_pulselaser_lvl1",
		"mechassault_pulselaser_lvl2",
		"mechassault_pulselaser_lvl3"
	},
	Sound = {
		Sound("MA2_Weapon.PulseLaser1"),
		Sound("MA2_Weapon.PulseLaser2"),
		Sound("MA2_Weapon.PulseLaser3")
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
	self:EmitSound(tbl.Sound[level])

	if SERVER then
		for _, v in ipairs(attachments) do
			local attachment = self:GetAttachment(v)

			ParticleEffectAttach(tbl.Effect[level], PATTACH_POINT_FOLLOW, self, v)

			local ent = ents.Create(tbl.Class[level])

			ent:SetPos(attachment.Pos)
			ent:SetAngles((self:GetAimPos() - attachment.Pos):Angle())
			ent:SetOwner(self)
			ent.Player = self:GetPlayer()

			ent:Spawn()
			ent:Activate()
		end
	end

	self:SetNextAttack(CurTime() + tbl.Cooldown[level])
end