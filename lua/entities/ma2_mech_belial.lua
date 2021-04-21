DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.belial"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.medium")
end

ENT.Spawnable 				= true

ENT.Radius 					= 140
ENT.Height 					= 420

ENT.Model 					= Model("models/mechassault_2/mechs/uziel.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 3214

ENT.CoreAttachment 			= 11

ENT.WeaponLoadout = {
	{Type = "AltPulseLaser", Level = 1, Attachments = {5, 6}},
	{Type = "Gauss", Level = 1, Attachments = {1, 3}},
	{Type = "Crossbow", Level = 1, Attachments = {7}}
}

ENT.JumpJets 				= {8, 9, 10}

function ENT:GetAnimationSpeeds()
	return 320, 580
end

function ENT:GetSpeeds()
	return 350, 704
end
