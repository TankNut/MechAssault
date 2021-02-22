local vector = FindMetaTable("Vector")

function vector:Approach(target, rate)
	local diff = target - self
	local ratio = diff:GetNormalized()

	self.x = math.Approach(self.x, target.x, rate * ratio.x)
	self.y = math.Approach(self.y, target.y, rate * ratio.y)
	self.z = math.Approach(self.z, target.z, rate * ratio.z)
end

function vector:Clamp(min, max)
	self.x = math.Clamp(self.x, min.x, max.x)
	self.y = math.Clamp(self.y, min.y, max.y)
	self.z = math.Clamp(self.z, min.z, max.z)
end

function scripted_ents.IsTypeOf(name, base)
	return name == base or scripted_ents.IsBasedOn(name, base)
end

include("mechassault/sh_sound.lua")

game.AddParticles("particles/gm_mechassault_2_projectile_effects.pcf")
game.AddParticles("particles/gm_mechassault_2_muzzleflash_effects.pcf")
game.AddParticles("particles/gm_mechassault_2_explosions.pcf")

hook.Add("SetupMove", "mechassault", function(ply, mv, cmd)
	local ent = ply:GetNWEntity("mechassault")

	if not IsValid(ent) then
		return
	end

	if ent:AllowInput() and ent:StartMove(ply, mv, cmd) then
		ent.PlayerExiting = true
	end
end)

hook.Add("VehicleMove", "mechassault", function(ply, vehicle, mv)
	local ent = ply:GetNWEntity("mechassault")

	if not IsValid(ent) then
		return
	end

	if ent:AllowInput() then
		ent:Move(mv)
	end

	return true
end)

hook.Add("FinishMove", "mechassault", function(ply, mv)
	local ent = ply:GetNWEntity("mechassault")

	if not IsValid(ent) then
		return
	end

	if ent:AllowInput() then
		ent:FinishMove(mv)

		if ent.PlayerExiting then
			ent:StopDriving(ply)
			ent.PlayerExiting = nil
		end
	end

	return true
end)

if CLIENT then
	hook.Add("CalcVehicleView", "mechassault", function(vehicle, ply, view)
		local ent = ply:GetNWEntity("mechassault")

		if not IsValid(ent) or ply:GetViewEntity() != ply then
			return
		end

		ply:SetObserverMode(OBS_MODE_CHASE)

		ent:CalcView(ply, view)
	end)

	hook.Add("PreDrawHUD", "mechassault", function()
		local ent = LocalPlayer():GetNWEntity("mechassault")

		if not IsValid(ent) then
			return
		end

		local screen = ent:GetAimPos():ToScreen()

		cam.Start2D()
			surface.SetDrawColor(255, 0, 0)
			surface.DrawLine(screen.x - 5, screen.y, screen.x + 5, screen.y)
			surface.DrawLine(screen.x, screen.y - 5, screen.x, screen.y + 5)
		cam.End2D()
	end)
else
	hook.Add("CanExitVehicle", "mechassault", function(vehicle, ply)
		if vehicle.Mechseat then
			return false
		end
	end)
end