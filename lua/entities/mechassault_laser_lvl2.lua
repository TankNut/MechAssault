DEFINE_BASECLASS("mechassault_proj_base")
AddCSLuaFile()

ENT.Base 					= "mechassault_proj_base"

ENT.Damage 					= 200
ENT.Velocity 				= 4000
ENT.HullSize 				= 10

ENT.ImpactSound 			= Sound("MECHASSAULT_2/laser_impact_mech.ogg")

PrecacheParticleSystem("gm_MA2_laser_lvl2")

function ENT:Initialize()
	BaseClass.Initialize(self)

	ParticleEffectAttach("gm_MA2_laser_lvl2", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

if CLIENT then
	function ENT:Draw()
	end
else
	function ENT:PhysicsCollide(data, phys)
		local mech = self:GetOwner()

		if data.HitEntity and IsValid(mech) and IsValid(self.Player) then
			local dmg = DamageInfo()

			dmg:SetDamageType(DMG_DIRECT)
			dmg:SetInflictor(mech)
			dmg:SetAttacker(self.Player)
			dmg:SetDamage(self.Damage)
			dmg:SetDamagePosition(self:GetPos())

			data.HitEntity:TakeDamageInfo(dmg)
		end

		self:EmitSound(self.ImpactSound)

		BaseClass.PhysicsCollide(self, data, phys)
	end
end