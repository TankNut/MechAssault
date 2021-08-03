DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.madcat"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.heavy")
end

ENT.Spawnable 				= true

ENT.Radius 					= 180
ENT.Height 					= 490

ENT.Model 					= Model("models/mechassault_2/mechs/mad_cat.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 4107

ENT.CoreAttachment 			= 9

ENT.WeaponLoadout = {
	{Type = "PPC", Level = 1, Attachments = {4, 2}},
	{Type = "Machinegun", Level = 1, Attachments = {3, 1}},
	{Type = "Javelin", Level = 1, Attachments = {7, 8, 7, 8}}
}

function ENT:GetAnimationSpeeds()
	return 240, 375
end

function ENT:GetSpeeds()
	return 300, 625
end
