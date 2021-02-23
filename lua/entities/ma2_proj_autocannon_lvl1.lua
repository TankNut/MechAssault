DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Damage 					= 100
ENT.Velocity 				= 8000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_tracer_autocannon_lvl1"
ENT.ImpactEffect 			= "gm_MA2_autocannon_impact_lvl1"

ENT.FireSound 				= Sound("MA2_Weapon.Autocannon1")

ENT.AngOffset 				= Angle(180, 0, 0)

PrecacheParticleSystem("gm_MA2_tracer_autocannon_lvl1")
PrecacheParticleSystem("gm_MA2_autocannon_impact_lvl1")

function ENT:OnHit(tr)
	if SERVER then
		ParticleEffect(self.ImpactEffect, tr.HitPos, tr.HitNormal:Angle())

		if self.ImpactSound then
			self:EmitSound(self.ImpactSound)
		end

		if IsValid(tr.Entity) then
			self:DealDamage(tr.Entity)
		end

		self:Remove()
	end
end
