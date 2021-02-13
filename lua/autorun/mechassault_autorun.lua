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

drive.Register("drive_mechassault", {
	StartMove = function(self, mv, cmd)
		if self.Entity:StartMove(self.Player, mv, cmd) then
			self:Stop()
		end
	end,
	Move = function(self, mv)
		self.Entity:Move(mv)
	end,
	FinishMove = function(self, mv)
		self.Entity:FinishMove(mv)

		if self.StopDriving then
			self.Entity:StopDriving(self.Player)
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

		-- local tr = util.TraceLine({
		-- 	start = ent:GetShootPos(),
		-- 	endpos = ent:GetShootPos() + ent:GetAimAngle():Forward() * 32768,
		-- 	filter = {ent, ent:GetGun()}
		-- })

		-- local screen = tr.HitPos:ToScreen()

		-- cam.Start2D()
		-- 	surface.SetDrawColor(255, 0, 0)
		-- 	surface.DrawLine(screen.x - 5, screen.y, screen.x + 5, screen.y)
		-- 	surface.DrawLine(screen.x, screen.y - 5, screen.x, screen.y + 5)
		-- cam.End2D()
	end)
end