DEFINE_BASECLASS("ma2_proj_warhammer_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_warhammer_lvl1"

ENT.Damage 					= 770
ENT.BlastRadius 			= 1024

ENT.ParticleAttach 			= "gm_MA2_hammer_lvl3"
ENT.ParticleImpact 			= "gm_MA2_explosion_hammer_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.Hammer3")

PrecacheParticleSystem("gm_MA2_hammer_lvl3")
PrecacheParticleSystem("gm_MA2_explosion_hammer_lvl3")
