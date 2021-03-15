DEFINE_BASECLASS("ma2_proj_flame_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_flame_lvl1"

ENT.Damage 					= 259

ENT.ParticleAttach 			= "gm_MA2_flamer_lvl2"
ENT.ImpactEffect 			= "gm_MA2_explosion_flamer_lvl2"

ENT.FireSound 				= Sound("MA2_Weapon.Flame2")

PrecacheParticleSystem("gm_MA2_flamer_lvl2")
PrecacheParticleSystem("gm_MA2_explosion_flamer_lvl2")
