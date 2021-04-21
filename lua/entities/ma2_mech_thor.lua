DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.thor"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.heavy")
end

ENT.Spawnable 				= true

ENT.Radius 					= 160
ENT.Height 					= 500

ENT.Model 					= Model("models/mechassault_2/mechs/thor.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 250)

ENT.MaxHealth 				= 3929

ENT.CoreAttachment 			= 10

ENT.WeaponLoadout = {
	{Type = "Laser", Level = 1, Attachments = {3, 1}},
	{Type = "Machinegun", Level = 1, Attachments = {3, 2, 5, 4}},
	{Type = "Crossbow", Level = 1, Attachments = {6, 6}}
}

ENT.JumpJets 				= {7, 8, 9}

function ENT:GetAnimationSpeeds()
	return 240, 500
end

function ENT:GetSpeeds()
	return 300, 705
end
