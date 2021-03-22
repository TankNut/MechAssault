local vector = FindMetaTable("Vector")
local angle = FindMetaTable("Angle")

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

function angle:Approach(target, rate)
	self.p = math.ApproachAngle(self.p, target.p, rate)
	self.y = math.ApproachAngle(self.y, target.y, rate)
	self.r = math.ApproachAngle(self.r, target.r, rate)
end

function scripted_ents.IsTypeOf(name, base)
	return name == base or scripted_ents.IsBasedOn(name, base)
end

debugTime = engine.TickInterval() * 2

include("mechassault/sh_sound.lua")

game.AddParticles("particles/gm_mechassault_2_projectile_effects.pcf")
game.AddParticles("particles/gm_mechassault_2_muzzleflash_effects.pcf")
game.AddParticles("particles/gm_mechassault_2_explosions.pcf")
game.AddParticles("particles/gm_mechassault_2_ballistic_tracers.pcf")
game.AddParticles("particles/gm_mechassault_2_jumpjet_effects.pcf")
game.AddParticles("particles/gm_mechassault_2_machinegun_impact.pcf")

hook.Add("SetupMove", "mechassault", function(ply, mv, cmd)
	local ent = ply:GetNWEntity("mechassault")

	if not IsValid(ent) then
		return
	end

	if CLIENT and not ent:GetPredictable() then
		ent:SetPredictable(true)
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
			ent:StopDriving()
			ent.PlayerExiting = nil
		end
	end

	return true
end)

if CLIENT then
	net.Receive("nMAStopEffect", function(len)
		local ent = net.ReadEntity()

		if IsValid(ent) then
			ent:StopParticlesNamed(net.ReadString())
		end
	end)

	hook.Add("CreateMove", "mechassault", function(cmd)
		local ent = LocalPlayer():GetNWEntity("mechassault")

		if not IsValid(ent) then
			return
		end

		for i = 0, 9 do
			local enum = "KEY_" .. i

			if input.IsKeyDown(_G[enum]) then
				cmd:SetImpulse(i)

				break
			end
		end
	end)

	hook.Add("CalcVehicleView", "mechassault", function(vehicle, ply, view)
		local ent = ply:GetNWEntity("mechassault")

		if not IsValid(ent) then
			return
		end

		if ply:GetViewEntity() != ply then
			ply:SetObserverMode(OBS_MODE_NONE)
		else
			ply:SetObserverMode(OBS_MODE_CHASE)
		end

		ent:CalcView(ply, view)
	end)

	hook.Add("PreDrawHUD", "mechassault", function()
		local ent = LocalPlayer():GetNWEntity("mechassault")

		if not IsValid(ent) then
			return
		end

		ent:DrawHUD()
	end)

	hook.Add("PrePlayerDraw", "mechassault", function(ply)
		local ent = ply:GetNWEntity("mechassault")

		if IsValid(ent) then
			return true
		end
	end)
else
	util.AddNetworkString("nMAStopEffect")

	hook.Add("PlayerDeath", "mechassault", function(ply)
		local ent = ply:GetNWEntity("mechassault")

		if not IsValid(ent) then
			return
		end

		ent:StopDriving()
	end)

	hook.Add("CanPlayerEnterVehicle", "mechassault", function(ply, vehicle, role)
		if vehicle.MAMech and not vehicle.MAMech.AllowEnter then
			return false
		end
	end)

	hook.Add("CanExitVehicle", "mechassault", function(vehicle, ply)
		if vehicle.MAMech then
			return false
		end
	end)
end
