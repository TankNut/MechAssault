AddCSLuaFile()

ENT.WeaponTypes.Lava = {
	Name = "mechassault.weapon.lava",
	Type = "Energy",
	Function = "FireLavaGun",
	Cooldown = 3.6,
	FireRate = 0.4,
	Burst = 3,
	Class = "ma2_proj_lava",
	Effect = "gm_MA2_muzzleflash_Flamer_lvl1",
	MaxLevel = 1
}

function ENT:FireLavaGun(tbl, level, attachments)
	local target = self:GetTargetLock() -- Cache early so we re-use the same target in the timer section

	for i = 0, tbl.Burst - 1 do
		for k, v in ipairs(attachments) do
			local count = k + (i * #attachments)

			timer.Simple((count - 1) * tbl.FireRate, function()
				local attachment = self:GetAttachment(v)

				ParticleEffectAttach(tbl.Effect, PATTACH_POINT_FOLLOW, self, v)

				if SERVER then
					local ent = ents.Create(tbl.Class)
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
			end)
		end
	end

	self:SetNextAttack(CurTime() + (tbl.Burst * #attachments * tbl.FireRate) + tbl.Cooldown)
end
