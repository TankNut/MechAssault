AddCSLuaFile()

ENT.Type 					= "anim"
ENT.AutomaticFrameAdvance 	= true

ENT.Author 					= "TankNut"

ENT.Model 					= Model("models/weapons/w_missile_launch.mdl")
ENT.Sound 					= Sound("MA2_Misc.Salvage")

function ENT:Initialize()
	self:SetModel(self.Model)

	if SERVER then
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetTrigger(true)
	end

	self:SetCollisionGroup(COLLISION_GROUP_WORLD)

	self:UseTriggerBounds(true, 128)
end

function ENT:Think()
	self:PhysWake() -- Trigger won't work otherwise?
end

if SERVER then
	function ENT:OnInteract(mech)
	end

	function ENT:StartTouch(ent)
		local owner = ent:GetOwner()

		if IsValid(owner) and not self.Used and scripted_ents.IsTypeOf(owner:GetClass(), "ma2_mech") and self:OnInteract(owner) then
			owner:EmitSound(self.Sound)

			self.Used = true

			SafeRemoveEntity(self)
		end
	end
end
