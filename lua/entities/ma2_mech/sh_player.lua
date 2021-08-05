AddCSLuaFile()

function ENT:EjectPlayer(safe)
	local ply = self:GetPlayer()

	if SERVER and IsValid(ply) then
		ply:SetNWEntity("mechassault", NULL)

		if safe then -- Set them down gently
			net.Start("nMAStopObs")
				net.WriteEntity(ply)
			net.Broadcast()

			ply:ExitVehicle()

			local ang = Angle(0, self:GetAngles().y, 0)
			local mins, maxs = ply:GetHull()

			local tr = util.TraceHull({
				start = self:WorldSpaceCenter(),
				endpos = self:LocalToWorld(self.ExitOffset),
				mins = mins,
				maxs = maxs,
				filter = function(ent)
					if ent == self or ent:GetOwner() == self or ent == ply then
						return false
					end

					return true
				end
			})

			ply:SetPos(tr.HitPos)
			ply:SetAngles(ang)
			ply:SetEyeAngles(ang)
		end
	end

	if CLIENT then
		self:SetPredictable(false)
	end

	self:SetPlayer(NULL)
end

if SERVER then
	function ENT:CanEnter(ply)
		return self:GetCurrentState() == STATE_OFFLINE
	end

	function ENT:Use(ply)
		if not self:CanEnter(ply) then
			self:EmitSound("mechassault_2/ui/ui_low_hp.ogg")

			return
		end

		self.AllowEnter = true

		ply:SetNWEntity("mechassault", self)
		ply:EnterVehicle(self:GetSeat())

		self.AllowEnter = nil

		self:SetPlayer(ply)

		self:SetState(STATE_POWERUP)
		self:SetCurrentWeapon(1)
	end
end
