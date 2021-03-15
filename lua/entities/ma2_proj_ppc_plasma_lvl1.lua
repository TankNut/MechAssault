DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Damage 					= 360
ENT.BlastRadius 			= 324

ENT.Velocity 				= 8000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_Plasma_PPC_lvl1"
ENT.ParticleImpact 			= "gm_MA2_explosion_plasma_ppc_additive"

ENT.ImpactSound 			= Sound("MA2_Weapon.PlasmaPPCHit")
ENT.FireSound 				= Sound("MA2_Weapon.PlasmaPPC1")

PrecacheParticleSystem("gm_MA2_Plasma_PPC_lvl1")
PrecacheParticleSystem("gm_MA2_explosion_plasma_ppc_additive")

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:DrawShadow(false)
end

if CLIENT then
	function ENT:Draw()
	end
end

function ENT:OnHit(tr)
	if self.ImpactSound then
		self:EmitSound(self.ImpactSound)
	end

	ParticleEffect(self.ParticleImpact, tr.HitPos, angle_zero)

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
