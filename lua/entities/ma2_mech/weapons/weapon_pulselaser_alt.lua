AddCSLuaFile()

ENT.WeaponTypes.AltPulseLaser = {
	Name = "mechassault.weapon.pulselaser",
	Type = "Energy",
	Function = "FireAltPulseLaser",
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
	MaxLevel = 3,
	MaxAmmo = 20
}

PrecacheParticleSystem("gm_MA2_muzzleflash_laser_lvl1")
PrecacheParticleSystem("gm_MA2_muzzleflash_laser_lvl2")
PrecacheParticleSystem("gm_MA2_muzzleflash_laser_lvl3")

function ENT:FireAltPulseLaser(tbl, level, attachments)
	local index = math.Clamp(self:GetAttachmentIndex(), 1, #attachments)

	index = index + 1

	if index > #attachments then
		index = 1
	end

	self:SetAttachmentIndex(index)

	local attachment = self:GetAttachment(attachments[index])

	ParticleEffectAttach(tbl.Effect[level], PATTACH_POINT_FOLLOW, self, attachments[index])

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

	self:TakeAmmo()
	self:SetNextAttack(CurTime() + tbl.Cooldown[level])
end
