DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Vulture"

ENT.Category 				= "MechAssault: Medium Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 140
ENT.Height 					= 420

ENT.Model 					= Model("models/mechassault_2/mechs/mad_dog.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 3750

ENT.CoreAttachment 			= 9

ENT.WeaponLoadout = {
	{Type = "Laser", Level = 1, Attachments = {2, 4}},
	{Type = "AltMachinegun", Level = 1, Attachments = {6, 5}},
	{Type = "Javelin", Level = 1, Attachments = {8, 7, 8, 7}}
}

function ENT:GetAnimationSpeeds()
	return 200, 350
end

function ENT:GetSpeeds()
	return 350, 704
end
