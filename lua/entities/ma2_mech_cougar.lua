DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Cougar"

ENT.Category 				= "MechAssault: Light Mechs"
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

ENT.JumpJets 				= {10, 11, 12}

function ENT:GetAnimationSpeeds()
	return 280, 580
end

function ENT:GetSpeeds()
	return 400, 1050
end
