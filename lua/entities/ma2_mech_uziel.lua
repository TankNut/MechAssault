DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Uziel"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.HullMin 				= Vector(-140, -140, 0)
ENT.HullMax 				= Vector(140, 140, 420)

ENT.Model 					= Model("models/mechassault_2/mechs/uziel.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 3214

ENT.CoreAttachment 			= 11

ENT.WeaponLoadout = {
	{Type = "PPC", Level = 1, Attachments = {1, 3}},
	{Type = "Crossbow", Level = 1, Attachments = {7}}
}

function ENT:GetAnimationSpeeds()
	return 320, 580
end

function ENT:GetSpeeds()
	return 350, 704
end
