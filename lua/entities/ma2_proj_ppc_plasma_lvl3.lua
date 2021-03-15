DEFINE_BASECLASS("ma2_proj_ppc_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_ppc_plasma_lvl1"

ENT.Damage 					= 602
ENT.BlastRadius 			= 512

ENT.ParticleAttach 			= "gm_MA2_Plasma_PPC_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.PlasmaPPC3")

PrecacheParticleSystem("gm_MA2_Plasma_PPC_lvl3")
