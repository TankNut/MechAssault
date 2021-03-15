DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "Sentinel"

ENT.Spawnable 				= true

ENT.Radius 					= 60
ENT.Height 					= 180

ENT.Model 					= Model("models/warhammer/dow_1/imperial/sentinel.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-300, 0, 100)

ENT.MaxHealth 				= 6000

ENT.CoreAttachment 			= 11

ENT.WeaponLoadout = {
	{Type = "PulseLaser", Level = 1, Attachments = {4}},
}

function ENT:Initialize()
	BaseClass.Initialize(self)

	if SERVER then
		self:PhysicsInitBox(Vector(-60, -60, 0), Vector(60, 60, 180))
		self:SetMoveType(MOVETYPE_NONE)
	end
end

function ENT:GetAnimationSpeeds()
	return 200, 380
end

function ENT:GetSpeeds()
	return 200, 445
end
