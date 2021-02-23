DEFINE_BASECLASS("mechassault_salvage")
AddCSLuaFile()

ENT.Base 					= "mechassault_salvage"

ENT.PrintName 				= "Missile Upgrade"

ENT.Category 				= "MechAssault Salvage"
ENT.Spawnable 				= true

ENT.Model 					= Model("models/mechassault_2/salvage/missile.mdl")

if SERVER then
	function ENT:OnInteract(mech)
		mech:UpgradeWeapon("Missile")
	end
end