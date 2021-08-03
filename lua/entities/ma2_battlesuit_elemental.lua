DEFINE_BASECLASS("ma2_battlesuit")
AddCSLuaFile()

ENT.Base 					= "ma2_battlesuit"

ENT.PrintName 				= "#mechassault.battlesuit.elemental"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.light")
end

ENT.Spawnable 				= true

ENT.Radius 					= 30
ENT.Height 					= 105

ENT.Model 					= Model("models/mechassault_2/mechs/elemental.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-100, 0, 70)

ENT.MaxHealth 				= 1012

ENT.CoreAttachment 			= 2

ENT.WeaponLoadout = {
	{Type = "Laser", Level = 1, Attachments = {5}},
	{Type = "AltCrossbow", Level = 1, Attachments = {3, 4}}
}

ENT.Jumpjets 				= true
ENT.MainJets 				= {1}

function ENT:GetAnimationSpeeds()
	return 50, 120
end

function ENT:GetSpeeds()
	return 100, 235
end
