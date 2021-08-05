AddCSLuaFile()

function ENT:GetWeaponLevel(index)
	return self["GetWeaponLevel" .. (index or self:GetCurrentWeapon())](self)
end

function ENT:SetWeaponLevel(index, level)
	self["SetWeaponLevel" .. (index or self:GetCurrentWeapon())](self, level)
end

function ENT:GetNextAttack()
	return self["GetNextAttack" .. self:GetCurrentWeapon()](self)
end

function ENT:SetNextAttack(time)
	self["SetNextAttack" .. self:GetCurrentWeapon()](self, time)
end

function ENT:GetAmmo(index)
	return self["GetWeaponAmmo" .. (index or self:GetCurrentWeapon())](self)
end

function ENT:SetAmmo(index, amount)
	return self["SetWeaponAmmo" .. (index or self:GetCurrentWeapon())](self, amount)
end

local radius = 64

function ENT:GetTargetLock()
	self.TargetFrame = self.TargetFrame or 0

	local cmp = CLIENT and FrameNumber() or engine.TickCount()

	if self.TargetFrame != cmp then
		self.TargetFrame = cmp

		local tr = util.TraceHull({
			start = self:GetAimOrigin(),
			endpos = self:GetAimPos(),
			filter = function(ent)
				local owner = ent:GetOwner()

				if ent:IsWorld() or ent == self or owner == self or ent == self:GetPlayer() then
					return false
				end

				if ent:IsPlayer() or ent:IsNPC() or ent:IsVehicle() then
					return true
				end

				if IsValid(owner) and scripted_ents.IsTypeOf(owner:GetClass(), "ma2_mech") then
					return true
				end

				return false
			end,
			mins = Vector(-radius, -radius, -radius),
			maxs = Vector(radius, radius, radius),
			ignoreworld = true
		})

		debugoverlay.SweptBox(tr.StartPos, tr.HitPos, Vector(-radius, -radius, -radius), Vector(radius, radius, radius), angle_zero, debugTime, Color(255, 0, 0))

		self.TargetCache = tr.Entity
	end

	return self.TargetCache
end

function ENT:GetTargetLead(target, pos, velocity)
	local targetPos = target:WorldSpaceCenter()

	local dist = (pos - targetPos):Length()
	local time = dist / velocity

	local leadPos = targetPos + (target:GetVelocity() * time)

	return (leadPos - pos):Angle()
end

function ENT:UpgradeWeapon(weaponType)
	local upgraded = false

	for k in ipairs(self.WeaponLoadout) do
		local _, class, level = self:GetWeaponData(k)

		if class.Type == weaponType and level < class.MaxLevel then
			upgraded = true

			self:SetWeaponLevel(k, level + 1)

			if class.MaxAmmo then
				self:SetAmmo(k, class.MaxAmmo)
			end
		end
	end

	if upgraded then
		self:AbortWeaponTimer()
	end

	return upgraded
end

function ENT:DowngradeWeapon(index)
	index = index or self:GetCurrentWeapon()

	self:SetWeaponLevel(index, 1)
	self:SetAmmo(index, -1)
end

function ENT:HasAmmo(index)
	local ammo = self:GetAmmo(index)

	if ammo == -1 then
		return true
	end

	return ammo > 0
end

function ENT:TakeAmmo(index)
	local ammo = self:GetAmmo(index)

	if ammo == -1 then
		return true
	end

	self:SetAmmo(index, self:GetAmmo(index) - 1)

	return self:CheckAmmo(index)
end

function ENT:CheckAmmo(index)
	if self:HasAmmo(index) then
		return true
	end

	if IsFirstTimePredicted() then
		self:DowngradeWeapon(index)
	end

	return false
end

function ENT:SwitchWeapon(wheel)
	local current = self:GetCurrentWeapon()
	local new = current - wheel

	if new > #self.WeaponLoadout then
		new = 1
	elseif new < 1 then
		new = #self.WeaponLoadout
	end

	self:SetWeapon(new)
end

function ENT:SetWeapon(index)
	if not self.WeaponLoadout[index] then
		return
	end

	self:AbortWeaponTimer()
	self:SetCurrentWeapon(index)
end

function ENT:AbortWeaponTimer()
	if self:GetWeaponTimer() == 0 then
		return
	end

	local weapon, class, level = self:GetWeaponData()

	self:Invoke(class.Abort, class, level, weapon.Attachments)
	self:SetWeaponTimer(0)
end

function ENT:GetWeaponData(index)
	index = index or self:GetCurrentWeapon()

	local weapon = self.WeaponLoadout[index]
	local class = self.WeaponTypes[weapon.Type]
	local level = self:GetWeaponLevel(index)

	return weapon, class, level
end

function ENT:UpdateWeapon(mv)
	local time = self:GetWeaponTimer()
	local weapon, class, level = self:GetWeaponData()

	if time != 0 and (not mv:KeyDown(IN_ATTACK) or (class.MaxTimer and CurTime() - time >= class.MaxTimer)) then
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
