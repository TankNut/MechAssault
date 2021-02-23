DEFINE_BASECLASS("ma2_proj_laser_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_laser_lvl1"

ENT.Damage 					= 91

ENT.ParticleAttach 			= "gm_MA2_laser_lvl2"

ENT.FireSound 				= Sound("mechassault_2/weapons/laser_lvl2.ogg")

PrecacheParticleSystem("gm_MA2_laser_lvl2")
