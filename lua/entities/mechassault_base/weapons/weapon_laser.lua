AddCSLuaFile()

ENT.WeaponTypes.Laser = {
	Type = "Energy",
	Function = "FireLaser",
	Cooldown = 0.5,
	Class = {
		"mechassault_laser_lvl1",
		"mechassault_laser_lvl2",
		"mechassault_laser_lvl3"
	},
	Sound = {
		Sound("MECHASSAULT_2/laser_lvl1.ogg"),
		Sound("MECHASSAULT_2/laser_lvl2.ogg"),
		Sound("MECHASSAULT_2/laser_lvl3.ogg")
	},
	MaxLevel = 3
}

function ENT:FireLaser(tbl, level)
	self:EmitSound(tbl.Sound[level])

	if SERVER then
		for _, v in ipairs(self.WeaponAttachments) do
			local attachment = self:GetAttachment(v)

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