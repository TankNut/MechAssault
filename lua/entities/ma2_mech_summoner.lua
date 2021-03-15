DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Summoner"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.Radius 					= 160
ENT.Height 					= 500

ENT.Model 					= Model("models/mechassault_2/mechs/thor.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 250)

ENT.MaxHealth 				= 3929

ENT.CoreAttachment 			= 10

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {3, 2, 5, 4}},
	{Type = "Autocannon", Level = 1, Attachments = {3, 1}},
	{Type = "Warhammer", Level = 1, Attachments = {6}}
}

ENT.JumpJets 				= {7, 8, 9}

function ENT:GetAnimationSpeeds()
	return 240, 500
end

function ENT:GetSpeeds()
	return 300, 705
end
