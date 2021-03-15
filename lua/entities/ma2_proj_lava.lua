DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Damage 					= 1650
ENT.BlastRadius 			= 256

ENT.Lifespan 				= 2.85

ENT.Velocity 				= 5000
ENT.HullSize 				= 64

ENT.ParticleAttach 			= "gm_MA2_hammer_lvl3"

ENT.ImpactSound 			= Sound("MA2_Weapon.HammerExplode")
ENT.FireSound 				= Sound("MA2_Weapon.Hammer1")

PrecacheParticleSystem("gm_MA2_hammer_lvl3")
PrecacheParticleSystem("gm_MA2_explosion_hammer_lvl3")

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:DrawShadow(false)
end

function ENT:OnHit(tr)
	if self.ImpactSound then
		self:EmitSound(self.ImpactSound)
	end

	ParticleEffect("gm_MA2_explosion_hammer_lvl3", tr.HitPos, angle_zero)

	if SERVER then
		local mech = self:GetOwner()

		if IsValid(mech) and IsValid(self.Player) then
			local dmg = DamageInfo()

			dmg:SetDamageType(DMG_BLAST + DMG_BURN)
			dmg:SetInflictor(mech)
			dmg:SetAttacker(self.Player)
			dmg:SetDamage(self.Damage)
			dmg:SetDamagePosition(self:GetPos())

			util.BlastDamageInfo(dmg, tr.HitPos, self.BlastRadius)
		end

		self:Remove()
	end
end

if CLIENT then
	function ENT:Draw()
	end
end
