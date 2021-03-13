DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Corvus"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.Radius 					= 100
ENT.Height 					= 300

ENT.HullMin 				= Vector(-100, -100, 0)
ENT.HullMax 				= Vector(100, 100, 300)

ENT.Model 					= Model("models/mechassault_2/mechs/raven.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 160)

ENT.MaxHealth 				= 2600

ENT.CoreAttachment 			= 7

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {2, 3}},
	{Type = "Autocannon", Level = 1, Attachments = {1}}
}

ENT.JumpJets 				= {4, 5, 6}

function ENT:GetAnimationSpeeds()
	return 350, 580
end

function ENT:GetSpeeds()
	return 400, 938
end
