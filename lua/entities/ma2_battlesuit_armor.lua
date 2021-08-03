DEFINE_BASECLASS("ma2_battlesuit")
AddCSLuaFile()

ENT.Base 					= "ma2_battlesuit"

ENT.PrintName 				= "#mechassault.battlesuit.armor"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.light")
end

ENT.Spawnable 				= true

ENT.Radius 					= 26
ENT.Height 					= 90

ENT.Model 					= Model("models/mechassault_2/mechs/battle_armor.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-100, 0, 50)

ENT.MaxHealth 				= 1012

ENT.CoreAttachment 			= 5

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {4}},
	{Type = "Mortar", Level = 1, Attachments = {3}}
}

ENT.Jumpjets 				= true
ENT.MainJets 				= {1, 2}

function ENT:GetAnimationSpeeds()
	return 40, 100
end

function ENT:GetSpeeds()
	return 100, 235
end
