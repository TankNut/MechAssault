DEFINE_BASECLASS("ma2_salvage")
AddCSLuaFile()

ENT.Base 					= "ma2_salvage"

ENT.PrintName 				= "Repair Kit"

ENT.Category 				= "MechAssault: Misc"
ENT.Spawnable 				= true

ENT.Model 					= Model("models/mechassault_2/salvage/health.mdl")

if SERVER then
	function ENT:OnInteract(mech)
		local health = mech:GetMechHealth()

		if health >= mech.MaxHealth then
			return false
		end

		mech:SetMechHealth(math.min(health + 3000, mech.MaxHealth))

		return true
	end
end
