DEFINE_BASECLASS("ma2_proj_gauss_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_gauss_lvl1"

ENT.Damage 					= 405

ENT.ParticleAttach 			= "gm_MA2_gauss_lvl3"
ENT.ImpactEffect 			= "gm_MA2_muzzleflash_gauss_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.Gauss3")

PrecacheParticleSystem("gm_MA2_gauss_lvl3")
PrecacheParticleSystem("gm_MA2_muzzleflash_gauss_lvl3")
