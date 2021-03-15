DEFINE_BASECLASS("ma2_proj_flame_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_flame_lvl1"

ENT.Damage 					= 363

ENT.ParticleAttach 			= "gm_MA2_flamer_lvl3"
ENT.ImpactEffect 			= "gm_MA2_explosion_flamer_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.Flame3")

PrecacheParticleSystem("gm_MA2_flamer_lvl3")
PrecacheParticleSystem("gm_MA2_explosion_flamer_lvl3")
