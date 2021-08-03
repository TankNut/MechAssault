DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.puma"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.light")
end

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

ENT.Jumpjets 				= true
ENT.MainJets 				= {10}
ENT.AuxJets 				= {11, 12}

function ENT:GetAnimationSpeeds()
	return 280, 580
end

function ENT:GetSpeeds()
	return 400, 1050
end
