DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Model 					= Model("models/mechassault_2/weapons/mortar_round.mdl")

ENT.Damage 					= 150
ENT.BlastRadius 			= 128

ENT.Velocity 				= 2000
ENT.HullSize 				= 10

ENT.GravityMultiplier 		= 1

ENT.ParticleAttach 			= "gm_MA2_javelin_lvl1"
ENT.ImpactEffect 			= "gm_MA2_explosion_mortar_lvl1"

ENT.ImpactSound 			= Sound("MA2_Weapon.MortarHit")
ENT.FireSound 				= Sound("MA2_Weapon.Mortar1")

ENT.AngOffset 				= Angle(180, 0, 0)

PrecacheParticleSystem("gm_MA2_javelin_lvl1")
PrecacheParticleSystem("gm_MA2_explosion_mortar_lvl1")

function ENT:OnHit(tr)
	if self.ImpactSound then
		self:EmitSound(self.ImpactSound)
	end

	ParticleEffect(self.ImpactEffect, tr.HitPos, angle_zero)

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
