DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.cougar"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.light")
end

ENT.Spawnable 				= true

ENT.Radius 					= 140
ENT.Height 					= 320

ENT.Model 					= Model("models/mechassault_2/mechs/cougar.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 180)

ENT.MaxHealth 				= 2714

ENT.CoreAttachment 			= 13

ENT.WeaponLoadout = {
	{Type = "AltPulseLaser", Level = 1, Attachments = {2, 1}},
	{Type = "Autocannon", Level = 1, Attachments = {3}},
	{Type = "Javelin", Level = 1, Attachments = {5, 6}},
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
