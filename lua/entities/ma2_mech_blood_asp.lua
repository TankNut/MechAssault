DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Blood Asp"

ENT.Category 				= "MechAssault: Assault Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 220
ENT.Height 					= 540

ENT.Model 					= Model("models/mechassault_2/mechs/blood_asp.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 260)

ENT.MaxHealth 				= 4485

ENT.CoreAttachment 			= 9

ENT.WeaponLoadout = {
	{Type = "PlasmaPPC", Level = 1, Attachments = {8, 7}},
	{Type = "Machinegun", Level = 1, Attachments = {3, 4, 1, 2}},
	{Type = "Javelin", Level = 1, Attachments = {5, 6}}
}

function ENT:GetAnimationSpeeds()
	return 420, 420
end

function ENT:GetSpeeds()
	return 200, 445
end
