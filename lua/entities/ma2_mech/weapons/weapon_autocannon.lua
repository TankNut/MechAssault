AddCSLuaFile()

ENT.WeaponTypes.Autocannon = {
	Name = "Autocannon",
	Type = "Ballistic",
	Function = "FireAutocannon",
	Cooldown = {2, 2.08, 2.16},
	Class = {
		"ma2_proj_autocannon_lvl1",
		"ma2_proj_autocannon_lvl2",
		"ma2_proj_autocannon_lvl3"
	},
	Effect = "gm_MA2_muzzleflash_autocannon",
	MaxLevel = 3
}

PrecacheParticleSystem("gm_MA2_muzzleflash_autocannon")

function ENT:FireAutocannon(tbl, level, attachments)
	for _, v in ipairs(attachments) do
		local attachment = self:GetAttachment(v)

		ParticleEffectAttach(tbl.Effect, PATTACH_POINT_FOLLOW, self, v)

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

	self:SetNextAttack(CurTime() + tbl.Cooldown[level])
end
