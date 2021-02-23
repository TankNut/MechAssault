DEFINE_BASECLASS("mechassault_pulselaser_lvl1")
AddCSLuaFile()

ENT.Base 					= "mechassault_pulselaser_lvl1"

ENT.Damage 					= 17

ENT.ParticleAttach 			= "gm_MA2_pulselaser_lvl2"
ENT.FireSound 				= Sound("MA2_Weapon.PulseLaser2")

PrecacheParticleSystem("gm_MA2_pulselaser_lvl2")