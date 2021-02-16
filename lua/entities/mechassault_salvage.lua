AddCSLuaFile()

ENT.Type 					= "anim"
ENT.AutomaticFrameAdvance 	= true

ENT.Author 					= "TankNut"

ENT.Model 					= Model("models/weapons/w_missile_launch.mdl")
ENT.Sound 					= Sound("MECHASSAULT_2/special_charge.ogg")

function ENT:Initialize()
	self:SetModel(self.Model)

	if SERVER then
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetTrigger(true)
	end

	self:UseTriggerBounds(true, 24)
end

function ENT:Think()
	self:PhysWake() -- Trigger won't work otherwise?
end

if SERVER then
	function ENT:OnInteract(mech)
	end

	function ENT:StartTouch(ent)
		if scripted_ents.IsTypeOf(ent:GetClass(), "mechassault_base") then
			self:EmitSound(self.Sound)
			self:OnInteract(ent)

			SafeRemoveEntity(self)
		end
	end
end