DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Puma"

ENT.Category 				= "MechAssault: Light Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 140
ENT.Height 					= 320

ENT.Model 					= Model("models/mechassault_2/mechs/cougar.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 180)

ENT.MaxHealth 				= 2714

ENT.CoreAttachment 			= 13

ENT.WeaponLoadout = {
	{Type = "PPC", Level = 1, Attachments = {3}},
	{Type = "Machinegun", Level = 1, Attachments = {7, 8}},
	{Type = "Crossbow", Level = 1, Attachments = {5, 6}},
}

ENT.JumpJets 				= {10, 11, 12}

function ENT:GetAnimationSpeeds()
	return 280, 580
end

function ENT:GetSpeeds()
	return 400, 1050
end
