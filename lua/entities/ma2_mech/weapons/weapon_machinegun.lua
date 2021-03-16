AddCSLuaFile()

ENT.WeaponTypes.Machinegun = {
	Name = "Machinegun",
	Type = "Ballistic",
	Function = "FireMachinegun",
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

function ENT:FireMachinegun(tbl, level, attachments)
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
	end

	self:SetNextAttack(CurTime() + tbl.Cooldown)
end
