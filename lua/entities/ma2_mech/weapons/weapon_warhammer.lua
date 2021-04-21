AddCSLuaFile()

ENT.WeaponTypes.Warhammer = {
	Name = "Warhammer N-THEM",
	Type = "Missile",
	Function = "PrimeWarhammer",
	Succeed = "FireWarhammer",
	ChargeTimer = 0.45,
	MaxTimer = 7,
	Class = {
		"ma2_proj_warhammer_lvl1",
		"ma2_proj_warhammer_lvl2",
		"ma2_proj_warhammer_lvl3"
	},
	MaxLevel = 3,
	DrawHUD = "DrawWarhammerHUD"
}

PrecacheParticleSystem("gm_MA2_muzzleflash_PPC_lvl1")
PrecacheParticleSystem("gm_MA2_muzzleflash_PPC_lvl2")
PrecacheParticleSystem("gm_MA2_muzzleflash_PPC_lvl3")

PrecacheParticleSystem("gm_MA2_PPC_lvl1_charging")
PrecacheParticleSystem("gm_MA2_PPC_lvl2_charging")
PrecacheParticleSystem("gm_MA2_PPC_lvl3_charging")

function ENT:PrimeWarhammer(tbl, level, attachments)
	if self:GetWeaponTimer() == 0 then
		self:SetWeaponTimer(CurTime() + tbl.ChargeTimer)
	end
end

local function getMissileTimer(tbl, time)
	return math.min(CurTime() - time + tbl.ChargeTimer, tbl.MaxTimer)
end

function ENT:FireWarhammer(tbl, level, attachments)
	local time = getMissileTimer(tbl, self:GetWeaponTimer())

	for k, v in ipairs(attachments) do
		local attachment = self:GetAttachment(v)

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

			ent:SetDietime(CurTime() + time)
		end
	end
end

function ENT:DrawWarhammerHUD(tbl, level, attachments, screen)
	local weaponTimer = self:GetWeaponTimer()

	if weaponTimer > 0 and CurTime() - weaponTimer > 0 then
		local time = getMissileTimer(tbl, weaponTimer)

		local _, h = surface.GetTextSize(self:GetWeaponString())

		surface.SetTextPos(screen.x + 10, screen.y + 10 + h)
		surface.DrawText(string.format(language.GetPhrase("mechassault.ui.weapon.charge"), time))
	end
end
