DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Model 					= Model("models/mechassault_2/weapons/warhammer_rocket.mdl")

ENT.Damage 					= 430
ENT.BlastRadius 			= 512

ENT.Velocity 				= 3000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_hammer_lvl1"
ENT.ParticleImpact 			= "gm_MA2_explosion_hammer_lvl1"

ENT.ExplodeSound 			= Sound("MA2_Weapon.HammerExplode")
ENT.ImpactSound 			= Sound("MA2_Weapon.HammerImpact")
ENT.FireSound 				= Sound("MA2_Weapon.Hammer1")

ENT.AngOffset 				= Angle(180, 0, 0)

PrecacheParticleSystem("gm_MA2_hammer_lvl1")
PrecacheParticleSystem("gm_MA2_explosion_hammer_lvl1")

function ENT:Think()
	if self.Die then
		return
	end

	local die = self:GetDietime()

	if die > 0 and die <= CurTime() then
		self:Explode()

		self.Die = true

		return
	end

	if self.Hit then
		return
	end

	local gravity = physenv.GetGravity() * self.GravityMultiplier
	local delta = CurTime() - self.LastThink

	self:SetVel(self:GetVel() + (gravity * delta))
	self:Process(delta)

	local pos = self:GetPos() + (self:GetVel() * delta)

	local blacklist = {
		[self] = true,
		[self:GetOwner()] = true
	}

	local tr = util.TraceHull({
		start = self:GetPos(),
		endpos = pos,
		filter = function(ent)
			if blacklist[ent] or ent:GetOwner() == self:GetOwner() or scripted_ents.IsTypeOf(ent:GetClass(), "ma2_proj") then
				return false
			end

			return true
		end,
		mins = Vector(-0.5, -0.5, -0.5) * self.HullSize,
		maxs = Vector(0.5, 0.5, 0.5) * self.HullSize
	})

	if tr.Fraction != 1 then
		self:EmitSound(self.ImpactSound)

		self:SetPos(tr.HitPos)

		self.Hit = true

		self:StopParticles()

		if not tr.Entity:IsWorld() then
			self:Explode()
		end

		return
	end

	local ang = self:GetVel():Angle() + self.AngOffset

	if CLIENT then
		self:SetRenderOrigin(pos)
		self:SetRenderAngles(ang)
	else
		self:SetPos(pos)
		self:SetAngles(ang)
	end

	self.LastThink = CurTime()
	self:NextThink(CurTime())

	return true
end

function ENT:Explode()
	local pos = self:GetPos()

	self:EmitSound(self.ExplodeSound)

	ParticleEffect(self.ParticleImpact, pos, angle_zero)

	if SERVER then
		local mech = self:GetOwner()

		if IsValid(mech) and IsValid(self.Player) then
			local dmg = DamageInfo()

			dmg:SetDamageType(DMG_BLAST)
			dmg:SetInflictor(mech)
			dmg:SetAttacker(self.Player)
			dmg:SetDamage(self.Damage)
			dmg:SetDamagePosition(pos)

			util.BlastDamageInfo(dmg, pos, self.BlastRadius)
		end

		self:Remove()
	end
end
