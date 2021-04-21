DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.stiletto"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.medium")
end

ENT.Spawnable 				= true

ENT.Radius 					= 140
ENT.Height 					= 420

ENT.Model 					= Model("models/mechassault_2/mechs/stiletto.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-600, 0, 260)

ENT.MaxHealth 				= 3354

ENT.CoreAttachment 			= 8

ENT.WeaponLoadout = {
	{Type = "Flamethrower", Level = 1, Attachments = {2}},
	{Type = "Gauss", Level = 1, Attachments = {1}},
	{Type = "Crossbow", Level = 1, Attachments = {3, 4, 3}}
}

ENT.JumpJets 				= {5, 6, 7}

function ENT:GetAnimationSpeeds()
	return 500, 800
end

function ENT:GetSpeeds()
	return 350, 750
end
