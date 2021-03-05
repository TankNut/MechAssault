DEFINE_BASECLASS("ma2_proj_tracking")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_tracking"

ENT.Model 					= Model("models/mechassault_2/weapons/crossbow_rocket.mdl")

ENT.Damage 					= 44
ENT.BlastRadius 			= 50

ENT.Lifespan 				= 2.85
ENT.TurnRate 				= 22.5

ENT.Velocity 				= 2000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_crossbow"

ENT.ImpactSound 			= Sound("MA2_Weapon.MissileHit")
ENT.FireSound 				= Sound("MA2_Weapon.Crossbow1")

ENT.AngOffset 				= Angle(180, 0, 0)

PrecacheParticleSystem("gm_MA2_crossbow")
PrecacheParticleSystem("gm_MA2_explosion_crossbow")

function ENT:OnDie()
	self:OnHit({
		HitPos = self:GetPos()
	})
end

function ENT:OnHit(tr)
	if self.ImpactSound then
		self:EmitSound(self.ImpactSound)
	end

	ParticleEffect("gm_MA2_explosion_crossbow", tr.HitPos, angle_zero)

	if SERVER then
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

		self:Remove()
	end
end
