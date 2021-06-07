AddCSLuaFile()

ENT.WeaponTypes.AltCrossbow = {
	Name = "mechassault.weapon.crossbow",
	Type = "Missile",
	Function = "FireAltCrossbow",
	Cooldown = {0.8, 1, 1.2},
	FireRate = 0.1,
	Class = {
		"ma2_proj_crossbow_lvl1",
		"ma2_proj_crossbow_lvl2",
		"ma2_proj_crossbow_lvl3"
	},
	MaxLevel = 3
}

function ENT:FireAltCrossbow(tbl, level, attachments)
	if SERVER then
		local weaponIndex = self:GetCurrentWeapon()
		local aborted = false

		local target = self:GetTargetLock() -- Cache early so we re-use the same target in the timer section

		for i = 0, level - 1 do
			local index = math.Clamp(self:GetAttachmentIndex(), 1, #attachments)

			index = index + 1

			if index > #attachments then
				index = 1
			end

			self:SetAttachmentIndex(index)

			timer.Simple(i * tbl.FireRate, function()
				if aborted then
					return
				end

				local attachment = self:GetAttachment(attachments[index])
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

				if not self:TakeAmmo(weaponIndex) then
					aborted = true
				end
			end)
		end
	end

	self:SetNextAttack(CurTime() + (level * tbl.FireRate) + tbl.Cooldown[level])
end
