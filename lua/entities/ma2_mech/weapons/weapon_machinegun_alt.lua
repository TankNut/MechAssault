AddCSLuaFile()

ENT.WeaponTypes.AltMachinegun = {
	Name = "Machinegun",
	Type = "Ballistic",
	Function = "FireAltMachinegun",
	Cooldown = 0.3,
	Class = {
		"ma2_proj_machinegun_lvl1",
		"ma2_proj_machinegun_lvl2",
		"ma2_proj_machinegun_lvl3"
	},
	Effect = {
		"gm_MA2_muzzleflash_machinegun_lvl1",
		"gm_MA2_muzzleflash_machinegun_lvl2",
		"gm_MA2_muzzleflash_machinegun_lvl3"
	},
	MaxLevel = 3
}

PrecacheParticleSystem("gm_MA2_muzzleflash_machinegun_lvl1")
PrecacheParticleSystem("gm_MA2_muzzleflash_machinegun_lvl2")
PrecacheParticleSystem("gm_MA2_muzzleflash_machinegun_lvl3")

function ENT:FireAltMachinegun(tbl, level, attachments)
	local index = math.Clamp(self:GetAttachmentIndex(), 1, #attachments)

	index = index + 1

	if index > #attachments then
		index = 1
	end

	self:SetAttachmentIndex(index)

	local attachment = self:GetAttachment(attachments[index])

	ParticleEffectAttach(tbl.Effect[level], PATTACH_POINT_FOLLOW, self, attachments[index])

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

	self:SetNextAttack(CurTime() + tbl.Cooldown)
end
