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

game.AddParticles("particles/gm_mechassault_2_projectile_effects.pcf")
game.AddParticles("particles/gm_mechassault_2_muzzleflash_effects.pcf")

sound.Add({
	name = "MA2_Mech.Step",
	channel = CHAN_AUTO,
	volume = 1,
	level = 90,
	pitch = {95, 110},
	sound = {
		"MECHASSAULT_2/mech_step_1.ogg",
		"MECHASSAULT_2/mech_step_2.ogg",
		"MECHASSAULT_2/mech_step_3.ogg",
		"MECHASSAULT_2/mech_step_4.ogg"
	}
})

hook.Add("EntityEmitSound", "mechassault", function(snd)
	if snd.OriginalSoundName == "MA2_Mech.Step" then
		snd.SoundName = string.format("MECHASSAULT_2/mech_step_%s.ogg", math.random(1, 4)) -- We just want something random, not mech_step_1 through 4 in order

		return true
	end
end)

drive.Register("drive_mechassault", {
	Init = function(self, cmd)
		self.Entity:SetPlayer(self.Player)
	end,
	Stop = function(self)
		self.StopDriving = true
		self.Entity:SetPlayer(NULL)
	end,
	StartMove = function(self, mv, cmd)
		self.Player:SetObserverMode(OBS_MODE_CHASE)

		if self.Entity:AllowInput() and self.Entity:StartMove(self.Player, mv, cmd) then
			self:Stop()
		end
	end,
	Move = function(self, mv)
		if self.Entity:AllowInput() then
			self.Entity:Move(mv)
		end
	end,
	FinishMove = function(self, mv)
		if self.Entity:AllowInput() then
			self.Entity:FinishMove(mv)

			if self.StopDriving then
				self.Entity:StopDriving(self.Player)
			end
		end
	end,
	CalcView = function(self, view)
		self.Entity:CalcView(self.Player, view)
	end
}, "drive_base")

if CLIENT then
	hook.Add("PreDrawHUD", "mechassault", function()
		local ent = LocalPlayer():GetDrivingEntity()
		local mode = util.NetworkIDToString(LocalPlayer():GetDrivingMode())

		if not IsValid(ent) or mode != "drive_mechassault" then
			return
		end

		local screen = ent:GetAimPos():ToScreen()

		cam.Start2D()
			surface.SetDrawColor(255, 0, 0)
			surface.DrawLine(screen.x - 5, screen.y, screen.x + 5, screen.y)
			surface.DrawLine(screen.x, screen.y - 5, screen.x, screen.y + 5)
		cam.End2D()
	end)
end