DEFINE_BASECLASS("ma2_proj_warhammer_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_warhammer_lvl1"

ENT.Damage 					= 600
ENT.BlastRadius 			= 712

ENT.ParticleAttach 			= "gm_MA2_hammer_lvl2"
ENT.ParticleImpact 			= "gm_MA2_explosion_hammer_lvl2"

ENT.FireSound 				= Sound("MA2_Weapon.Hammer2")

PrecacheParticleSystem("gm_MA2_hammer_lvl2")
PrecacheParticleSystem("gm_MA2_explosion_hammer_lvl2")
