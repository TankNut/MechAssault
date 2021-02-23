DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Raptor"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.HullMin 				= Vector(-140, -140, 0)
ENT.HullMax 				= Vector(140, 140, 420)

ENT.Model 					= Model("models/mechassault_2/mechs/stiletto.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 320)

ENT.MaxHealth 				= 3354

ENT.CoreAttachment 			= 8

ENT.WeaponLoadout = {
	{Type = "Crossbow", Level = 1, Attachments = {3, 4, 3, 4}},
	{Type = "Autocannon", Level = 1, Attachments = {1}},
	{Type = "PulseLaser", Level = 1, Attachments = {2}}
}

function ENT:GetAnimationSpeeds()
	return 500, 800
end

function ENT:GetSpeeds()
	return 350, 750
end
