DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Damage 					= 21
ENT.Velocity 				= 12000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_machinegun_lvl1"
ENT.ImpactEffect 			= "gm_MA2_impact_machinegun"

ENT.ImpactSound 			= Sound("MA2_Weapon.MachinegunHit")
ENT.FireSound 				= Sound("MA2_Weapon.Machinegun1")

PrecacheParticleSystem("gm_MA2_machinegun_lvl1")
PrecacheParticleSystem("gm_MA2_impact_machinegun")

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:DrawShadow(false)
end

if CLIENT then
	function ENT:Draw()
	end
end

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
