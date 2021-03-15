DEFINE_BASECLASS("ma2_battlesuit")
AddCSLuaFile()

ENT.Base 					= "ma2_battlesuit"

ENT.PrintName 				= "Elemental"

ENT.Category 				= "MechAssault: Light Mechs"
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
	{Type = "Crossbow", Level = 1, Attachments = {4}}
}

ENT.JumpJets 				= {1}

function ENT:GetAnimationSpeeds()
	return 50, 120
end

function ENT:GetSpeeds()
	return 100, 235
end
