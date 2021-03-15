DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Damage 					= 65
ENT.BlastRadius 			= 256

ENT.Lifespan 				= 0.75

ENT.Velocity 				= 3500
ENT.HullSize 				= 64

ENT.ParticleAttach 			= "gm_MA2_flamer_lvl1"
ENT.ImpactEffect 			= "gm_MA2_explosion_flamer_lvl1"

ENT.FireSound 				= Sound("MA2_Weapon.Flame1")

PrecacheParticleSystem("gm_MA2_flamer_lvl1")
PrecacheParticleSystem("gm_MA2_explosion_flamer_lvl1")

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:DrawShadow(false)
end

function ENT:OnDie()
	self:OnHit({
		HitPos = self:GetPos()
	})
end

function ENT:OnHit(tr)
	if self.ImpactSound then
		self:EmitSound(self.ImpactSound)
	end

	ParticleEffect(self.ImpactEffect, tr.HitPos, angle_zero)

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