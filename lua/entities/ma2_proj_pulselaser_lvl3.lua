DEFINE_BASECLASS("ma2_proj_pulselaser_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_pulselaser_lvl1"

ENT.Damage 					= 16

ENT.ParticleAttach 			= "gm_MA2_pulselaser_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.PulseLaser3")

PrecacheParticleSystem("gm_MA2_pulselaser_lvl3")
