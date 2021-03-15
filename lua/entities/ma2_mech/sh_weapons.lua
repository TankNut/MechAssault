AddCSLuaFile()

function ENT:GetWeaponLevel(index)
	return self["GetWeaponLevel" .. index](self)
end

function ENT:SetWeaponLevel(index, level)
	self["SetWeaponLevel" .. index](self, level)
end

function ENT:UpgradeWeapon(weaponType)
	local upgraded = false

	for k, v in ipairs(self.WeaponLoadout) do
		local class = self.WeaponTypes[v.Type]
		local level = self:GetWeaponLevel(k)

		if class.Type == weaponType and level < class.MaxLevel then
			upgraded = true

			self:SetWeaponLevel(k, level + 1)
		end
	end

	if upgraded then
		self:AbortWeaponTimer()
	end

	return upgraded
end

function ENT:SwitchWeapon(wheel)
	local current = self:GetCurrentWeapon()
	local new = current - wheel

	if new > #self.WeaponLoadout then
		new = 1
	elseif new < 1 then
		new = #self.WeaponLoadout
	end

	local time = self:GetWeaponTimer()

	if time != 0 then
		self:AbortWeaponTimer()
	end

	self:SetCurrentWeapon(new)
end

function ENT:AbortWeaponTimer()
	local weapon, class, level = self:GetWeaponData()

	self:Invoke(class.Abort, class, level, weapon.Attachments)
	self:SetWeaponTimer(0)
end

function ENT:GetWeaponData()
	local index = self:GetCurrentWeapon()
	local weapon = self.WeaponLoadout[index]
	local class = self.WeaponTypes[weapon.Type]
	local level = self:GetWeaponLevel(index)

	return weapon, class, level
end

function ENT:UpdateWeapon(mv)
	local time = self:GetWeaponTimer()

	if time != 0 and not mv:KeyDown(IN_ATTACK) then
		local weapon, class, level = self:GetWeaponData()

		if time <= CurTime() then
			self:Invoke(class.Succeed, class, level, weapon.Attachments)
		else
			self:Invoke(class.Abort, class, level, weapon.Attachments)
		end

		self:SetWeaponTimer(0)
	end
end

function ENT:Attack()
	if self:GetNextAttack() > CurTime() then
		return
	end

	local weapon, class, level = self:GetWeaponData()

	self:Invoke(class.Function, class, level, weapon.Attachments)
end

function ENT:SecondaryAttack()
end