DEFINE_BASECLASS("mechassault_base")
AddCSLuaFile()

ENT.Base 					= "mechassault_base"

ENT.PrintName 				= "Catapult"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.HullMin 				= Vector(-140, -140, 0)
ENT.HullMax 				= Vector(140, 140, 420)

ENT.Model 					= Model("models/mechassault_2/mechs/catapult.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 3750

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {1, 2, 3, 4}}
}

function ENT:GetAnimationSpeeds()
	return 300, 450
end