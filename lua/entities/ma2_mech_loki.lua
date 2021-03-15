DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Loki"

ENT.Category 				= "MechAssault: Heavy Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 160
ENT.Height 					= 500

ENT.Model 					= Model("models/mechassault_2/mechs/loki.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 250)

ENT.MaxHealth 				= 3929

ENT.CoreAttachment 			= 9

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {4, 3}},
	{Type = "Autocannon", Level = 1, Attachments = {2, 1}},
	{Type = "Crossbow", Level = 1, Attachments = {5, 5, 5}}
}

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:SetBodygroup(2, 1) -- Remove Jumpjets
end

function ENT:GetAnimationSpeeds()
	return 240, 500
end

function ENT:GetSpeeds()
	return 300, 705
end
