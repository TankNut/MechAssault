DEFINE_BASECLASS("mechassault_proj_base")
AddCSLuaFile()

ENT.Base 					= "mechassault_proj_base"

ENT.Model 					= Model("models/mechassault_2/weapons/javelin_rocket.mdl")

ENT.Damage 					= 100
ENT.BlastRadius 			= 100

ENT.Velocity 				= 4000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_javelin_lvl1"

ENT.FireSound 				= Sound("MA2_Weapon.Javelin1")

ENT.TurnRate 				= 25

ENT.AngOffset 				= Angle(180, 0, 0)

PrecacheParticleSystem("gm_MA2_javelin_lvl1")
PrecacheParticleSystem("gm_MA2_explosion_javelin")

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

function ENT:OnHit(tr)
	ParticleEffect("gm_MA2_explosion_javelin", tr.HitPos, angle_zero)

	local mech = self:GetOwner()

	if IsValid(mech) and IsValid(self.Player) then
		local dmg = DamageInfo()

		dmg:SetDamageType(DMG_BLAST)
		dmg:SetInflictor(mech)
		dmg:SetAttacker(self.Player)
		dmg:SetDamage(self.Damage)
		dmg:SetDamagePosition(self:GetPos())

		util.BlastDamageInfo(dmg, tr.HitPos, self.BlastRadius)
	end

	if SERVER then
		SafeRemoveEntity(self)
	end
end