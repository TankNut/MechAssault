DEFINE_BASECLASS("ma2_proj_autocannon_lvl1")
AddCSLuaFile()

ENT.Base 					= "ma2_proj_autocannon_lvl1"

ENT.Damage 					= 180

ENT.ParticleAttach 			= "gm_MA2_tracer_autocannon_lvl3"
ENT.ImpactEffect 			= "gm_MA2_autocannon_impact_lvl3"

ENT.FireSound 				= Sound("MA2_Weapon.Autocannon3")

PrecacheParticleSystem("gm_MA2_tracer_autocannon_lvl3")
PrecacheParticleSystem("gm_MA2_autocannon_impact_lvl3")
