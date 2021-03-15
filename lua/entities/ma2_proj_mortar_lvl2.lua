DEFINE_BASECLASS("ma2_proj_mortar_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_mortar_lvl1"

ENT.Damage 					= 225

ENT.ParticleAttach 			= "gm_MA2_javelin_lvl2"

ENT.FireSound 				= Sound("MA2_Weapon.Mortar2")

PrecacheParticleSystem("gm_MA2_javelin_lvl2")
