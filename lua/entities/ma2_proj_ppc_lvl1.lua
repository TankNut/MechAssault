DEFINE_BASECLASS("ma2_proj")
AddCSLuaFile()

ENT.Base 					= "ma2_proj"

ENT.Damage 					= 300
ENT.Velocity 				= 8000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_PPC_lvl1"

ENT.ImpactSound 			= Sound("MA2_Weapon.PPCHit")
ENT.FireSound 				= Sound("MA2_Weapon.PPC1")

PrecacheParticleSystem("gm_MA2_PPC_lvl1")

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:DrawShadow(false)
end

if CLIENT then
	function ENT:Draw()
	end
end
