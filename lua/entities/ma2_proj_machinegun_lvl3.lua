DEFINE_BASECLASS("ma2_proj_machinegun_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_machinegun_lvl1"

ENT.Damage 					= 38

ENT.ParticleAttach 			= "gm_MA2_machinegun_lvl2"

ENT.FireSound 				= Sound("MA2_Weapon.Machinegun3")

PrecacheParticleSystem("gm_MA2_machinegun_lvl2")
