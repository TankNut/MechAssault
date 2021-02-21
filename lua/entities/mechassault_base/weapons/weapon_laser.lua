AddCSLuaFile()

ENT.WeaponTypes.Laser = {
	Type = "Energy",
	Function = "FireLaser",
	Cooldown = 1,
	Class = {
		"mechassault_laser_lvl1",
		"mechassault_laser_lvl2",
		"mechassault_laser_lvl3"
	},
	Mounts = {2, 4},
	Sound = {
		Sound("mechassault_2/weapons/laser_lvl1.ogg"),
		Sound("mechassault_2/weapons/laser_lvl2.ogg"),
		Sound("mechassault_2/weapons/laser_lvl3.ogg")
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

function ENT:FireLaser(tbl, level)
	self:EmitSound(tbl.Sound[level])

	if SERVER then
		for _, v in ipairs(tbl.Mounts) do
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

	self:SetNextAttack(CurTime() + tbl.Cooldown)
end