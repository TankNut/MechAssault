DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Prometheus"

ENT.Category 				= "MechAssault: Assault Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 220
ENT.Height 					= 540

ENT.Model 					= Model("models/mechassault_2/mechs/atlas.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 360)

ENT.MaxHealth 				= 5500

ENT.CoreAttachment 			= 11

ENT.WeaponLoadout = {
	{Type = "Laser", Level = 1, Attachments = {7, 3, 4}},
	{Type = "Gauss", Level = 1, Attachments = {6, 2}},
	{Type = "Warhammer", Level = 1, Attachments = {10, 9}}
}

function ENT:GetAnimationSpeeds()
	return 200, 380
end

function ENT:GetSpeeds()
	return 200, 445
end
