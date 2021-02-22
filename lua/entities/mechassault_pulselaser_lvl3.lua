DEFINE_BASECLASS("mechassault_proj_base")
AddCSLuaFile()

ENT.Base 					= "mechassault_proj_base"

ENT.Damage 					= 16
ENT.Velocity 				= 8000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_pulselaser_lvl3"

ENT.ImpactSound 			= Sound("mechassault_2/weapons/laser_impact_mech.ogg")
ENT.FireSound 				= Sound("MA2_Weapon.PulseLaser3")

PrecacheParticleSystem("gm_MA2_pulselaser_lvl3")

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:DrawShadow(false)
end

if CLIENT then
	function ENT:Draw()
	end
end