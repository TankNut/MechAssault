DEFINE_BASECLASS("ma2_salvage")
AddCSLuaFile()

ENT.Base 					= "ma2_salvage"

ENT.PrintName 				= "#mechassault.salvage.ballistic"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.misc")
end

ENT.Spawnable 				= true

ENT.Model 					= Model("models/mechassault_2/salvage/ballistic.mdl")

if SERVER then
	function ENT:OnInteract(mech)
		return mech:UpgradeWeapon("Ballistic")
	end
end
