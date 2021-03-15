function ENT:DrawHUD()
	local screen = self:GetAimPos():ToScreen()

	cam.Start2D()
		surface.SetDrawColor(255, 0, 0)
		surface.DrawLine(screen.x - 5, screen.y, screen.x + 5, screen.y)
		surface.DrawLine(screen.x, screen.y - 5, screen.x, screen.y + 5)

		surface.SetFont("DebugFixed")
		surface.SetTextColor(255, 0, 0)

		local health = "Health: " .. self:GetMechHealth()
		local w, h = surface.GetTextSize(health)

		surface.SetTextPos(screen.x - 10 - w, screen.y - 10 - h)
		surface.DrawText(health)

		local index = self:GetCurrentWeapon()
		local weapon = self.WeaponLoadout[index].Type
		local class = self.WeaponTypes[weapon]

		local level = self:GetWeaponLevel(index)

		self:Invoke(class.DrawHUD, class, level, screen)

		surface.SetTextPos(screen.x + 10, screen.y + 10)
		surface.DrawText(string.format("%s lvl %s", class.Name, level))
	cam.End2D()
end
