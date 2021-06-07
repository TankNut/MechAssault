AddCSLuaFile()

ENT.WeaponTypes.Crossbow = {
	Name = "mechassault.weapon.crossbow",
	Type = "Missile",
	Function = "FireCrossbow",
	Cooldown = {0.8, 1, 1.2},
	FireRate = 0.1,
	Class = {
		"ma2_proj_crossbow_lvl1",
		"ma2_proj_crossbow_lvl2",
		"ma2_proj_crossbow_lvl3"
	},
	MaxLevel = 3
}

function ENT:FireCrossbow(tbl, level, attachments)
	if SERVER then
		local index = self:GetCurrentWeapon()
		local aborted = false

		local target = self:GetTargetLock() -- Cache early so we re-use the same target in the timer section

		for i = 0, level - 1 do
			for k, v in ipairs(attachments) do
				local count = k + (i * #attachments)

				timer.Simple((count - 1) * tbl.FireRate, function()
					if aborted then
						return
					end

					local attachment = self:GetAttachment(v)
					local ent = ents.Create(tbl.Class[level])
					local ang = (self:GetAimPos() - attachment.Pos):Angle()

					ent:SetPos(attachment.Pos)
					ent:SetAngles(ang)
					ent:SetOwner(self)
					ent.Player = self:GetPlayer()

					ent:Spawn()
					ent:Activate()

					if IsValid(target) then
						ent:SetTracked(target)
					else
						ent:SetTargetPos(self:GetAimTrace().HitPos)
					end

					if not self:TakeAmmo(index) then
						aborted = true
					end
				end)
			end
		end
	end

	self:SetNextAttack(CurTime() + (level * #attachments * tbl.FireRate) + tbl.Cooldown[level])
end
