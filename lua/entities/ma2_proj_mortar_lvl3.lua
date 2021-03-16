DEFINE_BASECLASS("ma2_proj_mortar_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_mortar_lvl1"

ENT.Damage 					= 350

ENT.ParticleAttach 			= "gm_MA2_javelin_lvl3"
ENT.ImpactEffect 			= "gm_MA2_explosion_mortar_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.Mortar3")

PrecacheParticleSystem("gm_MA2_javelin_lvl3")
PrecacheParticleSystem("gm_MA2_explosion_mortar_lvl3")
