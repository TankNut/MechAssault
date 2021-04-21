DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.kitfox"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.light")
end

ENT.Spawnable 				= true

ENT.Radius 					= 120
ENT.Height 					= 330

ENT.Model 					= Model("models/mechassault_2/mechs/uller.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 180)

ENT.MaxHealth 				= 2750

ENT.CoreAttachment 			= 7

ENT.WeaponLoadout = {
	{Type = "AltPulseLaser", Level = 1, Attachments = {3, 4}},
	{Type = "Warhammer", Level = 1, Attachments = {6}}
}

ENT.JumpJets 				= {7, 8, 9}

function ENT:GetAnimationSpeeds()
	return 240, 540
end

function ENT:GetSpeeds()
	return 400, 822
end
