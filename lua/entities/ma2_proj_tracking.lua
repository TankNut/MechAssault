DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.TurnRate 				= 45

function ENT:SetupDataTables()
	BaseClass.SetupDataTables(self)

	self:NetworkVar("Entity", 0, "Tracked")
	self:NetworkVar("Vector", 1, "TargetPos")
end

function ENT:Process(delta)
	local ent = self:GetTracked()

	if IsValid(ent) then
		self:SetTargetPos(ent:WorldSpaceCenter())
	end

	local target = self:GetTargetPos()

	local targetAng = (target - self:GetPos()):Angle()
	local vel = self:GetVel()

	local speed = vel:Length()
	local ang = vel:Angle()

	local diff = targetAng - vel:Angle()

	diff.p = math.NormalizeAngle(diff.p)
	diff.y = math.NormalizeAngle(diff.y)

	if diff.p < -90 or diff.p > 90 or diff.y < -90 or diff.y > 90 then
		return
	end

	local ratio = math.max(math.abs(diff.p), math.abs(diff.y))

	if ratio == 0 then
		return
	end

	ang.p = math.ApproachAngle(ang.p, targetAng.p, (diff.p / ratio) * self.TurnRate * delta)
	ang.y = math.ApproachAngle(ang.y, targetAng.y, (diff.y / ratio) * self.TurnRate * delta)
	ang.r = 0

	self:SetVel(ang:Forward() * speed)
end
