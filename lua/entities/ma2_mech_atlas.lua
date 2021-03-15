DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Atlas"

ENT.Category 				= "MechAssault: Assault Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 220
ENT.Height 					= 540

ENT.Model 					= Model("models/mechassault_2/mechs/atlas.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 360)

ENT.MaxHealth 				= 6000

ENT.CoreAttachment 			= 11

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {7, 8, 3, 4}},
	{Type = "Autocannon", Level = 1, Attachments = {5, 6, 1, 2}},
	{Type = "Javelin", Level = 1, Attachments = {10, 9}}
}

function ENT:GetAnimationSpeeds()
	return 200, 380
end

function ENT:GetSpeeds()
	return 200, 445
end
