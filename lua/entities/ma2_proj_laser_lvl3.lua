DEFINE_BASECLASS("ma2_proj_laser_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_laser_lvl1"

ENT.Damage 					= 117

ENT.ParticleAttach 			= "gm_MA2_laser_lvl3"

ENT.FireSound 				= Sound("mechassault_2/weapons/laser_lvl3.ogg")

PrecacheParticleSystem("gm_MA2_laser_lvl3")
