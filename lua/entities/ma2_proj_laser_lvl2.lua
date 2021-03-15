DEFINE_BASECLASS("ma2_proj_laser_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_laser_lvl1"

ENT.Damage 					= 91

ENT.ParticleAttach 			= "gm_MA2_laser_lvl2"

ENT.FireSound 				= Sound("MA2_Weapon.Laser2")

PrecacheParticleSystem("gm_MA2_laser_lvl2")
