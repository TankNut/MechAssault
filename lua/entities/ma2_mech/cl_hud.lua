function ENT:GetWeaponString()
	local _, class, level = self:GetWeaponData()

	return language.GetPhrase(class.Name) .. string.format(language.GetPhrase("mechassault.ui.weapon.level"), level)
end

function ENT:DrawHUD()
	if not self:AllowInput() then
		return
	end

	local screen = self:GetAimPos():ToScreen()

	cam.Start2D()
		surface.SetDrawColor(255, 0, 0)
		surface.DrawLine(screen.x - 5, screen.y, screen.x + 5, screen.y)
		surface.DrawLine(screen.x, screen.y - 5, screen.x, screen.y + 5)

		surface.SetFont("DebugFixed")
		surface.SetTextColor(255, 0, 0)

		local health = string.format(language.GetPhrase("mechassault.ui.health"), self:GetMechHealth())
		local w, h = surface.GetTextSize(health)

		surface.SetTextPos(screen.x - 10 - w, screen.y - 10 - h)
		surface.DrawText(health)

		local weapon, class, level = self:GetWeaponData()

		self:Invoke(class.DrawHUD, class, level, weapon.Attachments, screen)

		surface.SetDrawColor(255, 0, 0)

		surface.SetTextPos(screen.x + 10, screen.y + 10)
		surface.DrawText(self:GetWeaponString())

		local target = self:GetTargetLock()

		if IsValid(target) then
			self:HighlightTarget(target)
		end
	cam.End2D()
end

function ENT:HighlightTarget(ent)
	local mins = ent:OBBMins()
	local maxs = ent:OBBMaxs()

	if scripted_ents.IsTypeOf(ent:GetClass(), "ma2_mech") then
		mins = Vector(-ent.Radius, -ent.Radius, 0)
		maxs = Vector(ent.Radius, ent.Radius, ent.Height)
	end

	local positions = {
		ent:LocalToWorld(Vector(maxs.x, maxs.y, maxs.z)):ToScreen(),
		ent:LocalToWorld(Vector(maxs.x, mins.y, maxs.z)):ToScreen(),
		ent:LocalToWorld(Vector(maxs.x, maxs.y, mins.z)):ToScreen(),
		ent:LocalToWorld(Vector(maxs.x, mins.y, mins.z)):ToScreen(),
		ent:LocalToWorld(Vector(mins.x, maxs.y, maxs.z)):ToScreen(),
		ent:LocalToWorld(Vector(mins.x, mins.y, maxs.z)):ToScreen(),
		ent:LocalToWorld(Vector(mins.x, maxs.y, mins.z)):ToScreen(),
		ent:LocalToWorld(Vector(mins.x, mins.y, mins.z)):ToScreen()
	}

	local hudMin = Vector(math.floor(positions[1].x), math.floor(positions[1].y), 0)
	local hudMax = Vector(math.ceil(positions[1].x), math.ceil(positions[1].y), 0)

	for i = 2, 8 do
		local pos = positions[i]

		hudMin.x = math.min(hudMin.x, math.floor(pos.x))
		hudMin.y = math.min(hudMin.y, math.floor(pos.y))

		hudMax.x = math.max(hudMax.x, math.ceil(pos.x))
		hudMax.y = math.max(hudMax.y, math.ceil(pos.y))
	end

	local w = hudMax.x - hudMin.x
	local h = hudMax.y - hudMin.y

	surface.DrawOutlinedRect(hudMin.x, hudMin.y, w, h)
end
