DEFINE_BASECLASS("ma2_proj_ppc_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_ppc_plasma_lvl1"

ENT.Damage 					= 454
ENT.BlastRadius 			= 400

ENT.ParticleAttach 			= "gm_MA2_Plasma_PPC_lvl2"

ENT.FireSound 				= Sound("MA2_Weapon.PlasmaPPC2")

PrecacheParticleSystem("gm_MA2_Plasma_PPC_lvl2")
