DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.timberwolf"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.heavy")
end

ENT.Spawnable 				= true

ENT.Radius 					= 180
ENT.Height 					= 490

ENT.Model 					= Model("models/mechassault_2/mechs/mad_cat.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 4107

ENT.CoreAttachment 			= 9

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {3, 1}},
	{Type = "Gauss", Level = 1, Attachments = {4, 2}},
	{Type = "Crossbow", Level = 1, Attachments = {7, 8, 7, 8}}
}

function ENT:GetAnimationSpeeds()
	return 240, 430
end

function ENT:GetSpeeds()
	return 300, 470
end
