DEFINE_BASECLASS("mechassault_salvage")
AddCSLuaFile()

ENT.Base 					= "mechassault_salvage"

ENT.PrintName 				= "Energy Upgrade"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.Model 					= Model("models/mechassault_2/salvage/energy.mdl")

if SERVER then
	function ENT:OnInteract(mech)
		mech:UpgradeWeapon("Energy")
	end
end