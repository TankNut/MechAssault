AddCSLuaFile()

ENT.WeaponTypes.Mortar = {
	Name = "mechassault.weapon.mortar",
	Type = "Missile",
	Function = "FireMortar",
	Cooldown = {1.8, 1.75, 1.58},
	Class = {
		"ma2_proj_mortar_lvl1",
		"ma2_proj_mortar_lvl2",
		"ma2_proj_mortar_lvl3"
	},
	DrawHUD = "DrawMortarHUD",
	MaxLevel = 3
}

-- From: https://github.com/TankNut/TankLib/blob/master/lua/tanklib/shared/ballistics.lua

local function solve(origin, target, vel, gravity)
	local diff = target - origin
	local diff2 = Vector(diff.x, diff.y, 0)

	local dist = diff2:Length()

	local vel2 = vel * vel
	local vel4 = vel * vel * vel * vel

	local gx = gravity * dist

	local root = vel4 - gravity * (gravity * dist * dist + 2 * diff.z * vel2)

	if root < 0 then
		return 0
	end

	root = math.sqrt(root)

	local low = math.atan2(vel2 - root, gx)
	local high = math.atan2(vel2 + root, gx)

	local solutions = (low != high) and 2 or 1

	local dir = diff2:GetNormalized()

	low = dir * math.cos(low) * vel + Vector(0, 0, 1) * math.sin(low) * vel
	high = dir * math.cos(high) * vel + Vector(0, 0, 1) * math.sin(high) * vel

	return solutions, low, high
end

function ENT:FireMortar(tbl, level, attachments)
	local target = self:GetAimPos()

	for _, v in ipairs(attachments) do
		local attachment = self:GetAttachment(v)

		if SERVER then
			local ent = ents.Create(tbl.Class[level])
			local solutions, low = solve(attachment.Pos, target, ent.Velocity, -physenv.GetGravity().z * ent.GravityMultiplier)

			if solutions != 2 then
				return
			end

			ent:SetPos(attachment.Pos)
			ent:SetAngles(low:Angle())
			ent:SetOwner(self)
			ent.Player = self:GetPlayer()

			ent:Spawn()
			ent:Activate()
		end
	end

	self:SetNextAttack(CurTime() + tbl.Cooldown[level])

	if SERVER then
		self:AddGestureSequence(self:LookupSequence("fire_mortar"))
	end
end

function ENT:DrawMortarHUD(tbl, level, attachments, screen)
	local target = self:GetAimPos()

	local attachment = self:GetAttachment(attachments[1])

	local vel = scripted_ents.GetMember(tbl.Class[level], "Velocity")
	local gravity = scripted_ents.GetMember(tbl.Class[level], "GravityMultiplier")

	local solutions = solve(attachment.Pos, target, vel, -physenv.GetGravity().z * gravity)

	local _, h = surface.GetTextSize(self:GetWeaponString())

	surface.SetTextPos(screen.x + 10, screen.y + 10 + h)

	if solutions == 2 then
		surface.DrawText(language.GetPhrase("mechassault.ui.weapon.range.ok"))
	else
		surface.DrawText(language.GetPhrase("mechassault.ui.weapon.range.err"))
	end
end
