AddCSLuaFile()

ENT.WeaponTypes.Mortar = {
	Name = "Mortar",
	Type = "Rocket",
	Function = "FireMortar",
	Cooldown = {1.8, 1.75, 1.58},
	Class = {
		"ma2_proj_mortar_lvl1",
		"ma2_proj_mortar_lvl2",
		"ma2_proj_mortar_lvl3"
	},
	DrawHUD = "DrawMortarHUD",
	MinRange = 1000,
	MaxRange = 3000,
	MaxLevel = 3
}

-- From: https://github.com/TankNut/TankLib/blob/master/lua/tanklib/shared/ballistics.lua

local function solve(origin, target, vel, height)
	local diff = target - origin
	local diff2 = Vector(diff.x, diff.y, 0)

	local dist = diff2:Length()

	if dist == 0 then
		return false
	end

	local time = dist / vel
	local vec = diff2:GetNormalized() * vel

	local a = origin.z
	local b = math.max(origin.z, target.z) + height
	local c = target.z

	local gravity = -4 * (a - 2 * b + c) / (time * time)

	vec.z = -(3 * a - 4 * b + c) / time

	return true, vec, gravity
end

function ENT:FireMortar(tbl, level, attachments)
	local target = self:GetAimPos()

	local dist = (self:WorldSpaceCenter() - target):Length2D()

	if dist < tbl.MinRange or dist > tbl.MaxRange then
		return
	end

	for _, v in ipairs(attachments) do
		local attachment = self:GetAttachment(v)

		if SERVER then
			local ent = ents.Create(tbl.Class[level])
			local ang = (target - attachment.Pos):Angle()

			local ok, vel, gravity = solve(attachment.Pos, target, ent.Velocity, 500)

			if ok then
				ang = vel:Angle()

				ent.Velocity = vel:Length()
				ent.GravityMultiplier = (gravity / -physenv.GetGravity().z)
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

	if SERVER then
		self:AddGestureSequence(self:LookupSequence("fire_mortar"))
	end
end

function ENT:DrawMortarHUD(tbl, level, screen)
	local target = self:GetAimPos()

	local dist = (self:WorldSpaceCenter() - target):Length2DSqr()

	local ok = dist > tbl.MinRange * tbl.MinRange and dist < tbl.MaxRange * tbl.MaxRange
	local time = math.sqrt(dist) / scripted_ents.GetMember(tbl.Class[level], "Velocity")

	local _, h = surface.GetTextSize(string.format("%s lvl %s", tbl.Name, level))

	surface.SetTextPos(screen.x + 10, screen.y + 10 + h)

	if ok then
		surface.DrawText(string.format("Range: OK (%.2fs)", time))
	else
		surface.DrawText("Range: ERR")
	end
end