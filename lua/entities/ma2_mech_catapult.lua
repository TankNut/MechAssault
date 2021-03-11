DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Catapult"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.Radius 					= 140
ENT.Height 					= 420

ENT.HullMin 				= Vector(-140, -140, 0)
ENT.HullMax 				= Vector(140, 140, 420)

ENT.Model 					= Model("models/mechassault_2/mechs/catapult.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.MaxHealth 				= 3750

ENT.CoreAttachment 			= 10

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {1, 2, 3, 4}},
	{Type = "Javelin", Level = 1, Attachments = {6, 5, 6, 5}}
}

function ENT:GetAnimationSpeeds()
	return 300, 470
end

function ENT:GetSpeeds()
	return 300, 470
end
