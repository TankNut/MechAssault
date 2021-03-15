AddCSLuaFile()

ENT.WeaponTypes.Flamethrower = {
	Name = "Flamethrower",
	Type = "Energy",
	Function = "FireFlamethrower",
	Cooldown = 1.45,
	Class = {
		"ma2_proj_flame_lvl1",
		"ma2_proj_flame_lvl2",
		"ma2_proj_flame_lvl3"
	},
	MaxLevel = 3
}

function ENT:FireFlamethrower(tbl, level, attachments)
	for _, v in ipairs(attachments) do
		local attachment = self:GetAttachment(v)

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
