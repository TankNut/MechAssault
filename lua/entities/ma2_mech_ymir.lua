DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Ymir"

ENT.Category 				= "MechAssault: Assault Mechs"
ENT.Spawnable 				= true

ENT.Radius 					= 200
ENT.Height 					= 700

ENT.Model 					= Model("models/mechassault_2/mechs/ragnarok.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 300)

ENT.MaxHealth 				= 5035

ENT.CoreAttachment 			= 7

ENT.WeaponLoadout = {
	{Type = "Lava", Level = 1, Attachments = {6}},
	{Type = "Gauss", Level = 1, Attachments = {4, 2}},
	{Type = "Autocannon", Level = 1, Attachments = {3, 4, 1, 2}}
}

function ENT:GetAnimationSpeeds()
	return 190, 350
end

function ENT:GetSpeeds()
	return 200, 470
end