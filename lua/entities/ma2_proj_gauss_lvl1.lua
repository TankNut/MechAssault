DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Damage 					= 225
ENT.Velocity 				= 20000
ENT.HullSize 				= 32

ENT.ParticleAttach 			= "gm_MA2_gauss_lvl1"
ENT.ImpactEffect 			= "gm_MA2_muzzleflash_gauss_lvl1"

ENT.ImpactSound 			= Sound("MA2_Weapon.LaserHit")
ENT.FireSound 				= Sound("MA2_Weapon.Gauss1")

ENT.AngOffset 				= Angle(180, 0, 0)

PrecacheParticleSystem("gm_MA2_gauss_lvl1")
PrecacheParticleSystem("gm_MA2_muzzleflash_gauss_lvl1")

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
