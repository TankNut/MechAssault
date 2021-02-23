DEFINE_BASECLASS("ma2_salvage")
AddCSLuaFile()

ENT.Base 					= "ma2_salvage"

ENT.PrintName 				= "Ballistic Upgrade"

ENT.Category 				= "MechAssault Salvage"
ENT.Spawnable 				= true

ENT.Model 					= Model("models/mechassault_2/salvage/ballistic.mdl")

if SERVER then
	function ENT:OnInteract(mech)
		mech:UpgradeWeapon("Ballistic")
	end
end
