DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.maddog"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.medium")
end

ENT.Spawnable 				= true

ENT.Radius 					= 140
ENT.Height 					= 420

ENT.Model 					= Model("models/mechassault_2/mechs/mad_dog.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 3750

ENT.CoreAttachment 			= 9

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {2, 4}},
	{Type = "Autocannon", Level = 1, Attachments = {1, 3}},
	{Type = "Crossbow", Level = 1, Attachments = {8, 7, 8, 7}}
}

function ENT:GetAnimationSpeeds()
	return 200, 350
end

function ENT:GetSpeeds()
	return 350, 704
end
