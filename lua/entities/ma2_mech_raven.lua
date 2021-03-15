DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Raven"

ENT.Category 				= "MechAssault: Light Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 100
ENT.Height 					= 300

ENT.Model 					= Model("models/mechassault_2/mechs/raven.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 180)

ENT.MaxHealth 				= 2600

ENT.CoreAttachment 			= 7

ENT.WeaponLoadout = {
	{Type = "Laser", Level = 1, Attachments = {3}},
	{Type = "Machinegun", Level = 1, Attachments = {3, 2}},
	{Type = "Javelin", Level = 1, Attachments = {1}}
}

function ENT:Initialize()
	BaseClass.Initialize(self)

	self:SetBodygroup(2, 1) -- Remove Jumpjets
end

function ENT:GetAnimationSpeeds()
	return 350, 580
end

function ENT:GetSpeeds()
	return 400, 938
end
