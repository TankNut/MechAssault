DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Mini Spider"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.Radius 					= 120
ENT.Height 					= 100

ENT.HullMin 				= Vector(-120, -120, 0)
ENT.HullMax 				= Vector(120, 120, 100)

ENT.Model 					= Model("models/mechassault_2/bosses/minispider.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-300, 0, 100)

ENT.MaxHealth 				= 1012

ENT.Spider 					= true

ENT.WeaponLoadout = {
	{Type = "Crossbow", Level = 1, Attachments = {1, 2}},
}

function ENT:GetAnimationSpeeds()
	return 120, 250
end

function ENT:GetSpeeds()
	return 300, 750
end
