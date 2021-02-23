AddCSLuaFile()

ENT.WeaponTypes.Javelin = {
	Name = "Javelin LRM",
	Type = "Missile",
	Function = "FireJavelin",
	Cooldown = 2.5,
	FireRate = 0.1,
	Class = {
		"mechassault_javelin_lvl1",
		"mechassault_javelin_lvl2",
		"mechassault_javelin_lvl3"
	},
	MaxLevel = 3
}

function ENT:FireJavelin(tbl, level, attachments)
	if SERVER then
		for k, v in ipairs(attachments) do
			timer.Simple((k - 1) * tbl.FireRate, function()
				local attachment = self:GetAttachment(v)
				local ent = ents.Create(tbl.Class[level])

				ent:SetPos(attachment.Pos)
				ent:SetAngles(attachment.Ang)
				ent:SetOwner(self)
				ent.Player = self:GetPlayer()

				ent:Spawn()
				ent:Activate()

				local tr = self:GetAimTrace()

				if IsValid(tr.Entity) and tr.Entity:MapCreationID() == -1 then
					ent:SetTracked(tr.Entity)
				else
					ent:SetTargetPos(tr.HitPos)
				end
			end)
		end
	end

	self:SetNextAttack(CurTime() + tbl.Cooldown)
end