DEFINE_BASECLASS("ma2_proj_gauss_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_gauss_lvl1"

ENT.Damage 					= 315

ENT.ParticleAttach 			= "gm_MA2_gauss_lvl2"
ENT.ImpactEffect 			= "gm_MA2_muzzleflash_gauss_lvl2"

ENT.FireSound 				= Sound("MA2_Weapon.Gauss2")

PrecacheParticleSystem("gm_MA2_gauss_lvl2")
PrecacheParticleSystem("gm_MA2_muzzleflash_gauss_lvl2")
