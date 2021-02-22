DEFINE_BASECLASS("mechassault_base")
AddCSLuaFile()

ENT.Base 					= "mechassault_base"

ENT.PrintName 				= "Corvus"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.HullMin 				= Vector(-100, -100, 0)
ENT.HullMax 				= Vector(100, 100, 300)

ENT.Model 					= Model("models/mechassault_2/mechs/raven.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 160)

ENT.MaxHealth 				= 2600

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {2, 3}}
}

function ENT:GetSpeeds()
	return 400, 1000
end

function ENT:GetAnimationSpeeds()
	return 350, 580
end