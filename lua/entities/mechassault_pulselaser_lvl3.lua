DEFINE_BASECLASS("mechassault_pulselaser_lvl1")
AddCSLuaFile()

ENT.Base 					= "mechassault_pulselaser_lvl1"

ENT.Damage 					= 16
ENT.Velocity 				= 8000
ENT.HullSize 				= 10

ENT.ParticleAttach 			= "gm_MA2_pulselaser_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.PulseLaser3")

PrecacheParticleSystem("gm_MA2_pulselaser_lvl3")