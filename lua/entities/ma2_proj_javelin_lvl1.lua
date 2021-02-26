DEFINE_BASECLASS("ma2_proj_tracking")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_tracking"

ENT.Model 					= Model("models/mechassault_2/weapons/javelin_rocket.mdl")

ENT.Damage 					= 100
ENT.BlastRadius 			= 100

ENT.Lifespan 				= 13
ENT.TurnRate 				= 45

ENT.Velocity 				= 4000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_javelin_lvl1"

ENT.ImpactSound 			= Sound("MA2_Weapon.MissileHit")
ENT.FireSound 				= Sound("MA2_Weapon.Javelin1")

ENT.AngOffset 				= Angle(180, 0, 0)

PrecacheParticleSystem("gm_MA2_javelin_lvl1")
PrecacheParticleSystem("gm_MA2_explosion_javelin")

function ENT:OnHit(tr)
	if self.ImpactSound then
		self:EmitSound(self.ImpactSound)
	end

	ParticleEffect("gm_MA2_explosion_javelin", tr.HitPos, angle_zero)

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
