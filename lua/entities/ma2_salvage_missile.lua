DEFINE_BASECLASS("ma2_salvage")
AddCSLuaFile()

ENT.Base 					= "ma2_salvage"

ENT.PrintName 				= "Missile Upgrade"

ENT.Category 				= "MechAssault: Misc"
ENT.Spawnable 				= true

ENT.Model 					= Model("models/mechassault_2/salvage/missile.mdl")

if SERVER then
	function ENT:OnInteract(mech)
		mech:UpgradeWeapon("Missile")
	end
end
