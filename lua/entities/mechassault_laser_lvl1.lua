DEFINE_BASECLASS("mechassault_proj_base")
AddCSLuaFile()

ENT.Base 					= "mechassault_proj_base"

ENT.Author 					= "TankNut"

ENT.Spawnable 				= false
ENT.AdminSpawnable 			= false

ENT.AutomaticFrameAdvance	= true

ENT.Model 					= Model("models/weapons/w_missile_launch.mdl")

ENT.Damage 					= 200
ENT.Velocity 				= 4000
ENT.HullSize 				= 10

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

		if data.HitEntity and IsValid(mech) then
			local dmg = DamageInfo()

			dmg:SetDamageType(DMG_DIRECT)
			dmg:SetInflictor(mech)
			dmg:SetAttacker(mech:GetPlayer())
			dmg:SetDamage(self.Damage)
			dmg:SetDamagePosition(self:GetPos())

			data.HitEntity:TakeDamageInfo(dmg)
		end

		BaseClass.PhysicsCollide(self, data, phys)
	end
end