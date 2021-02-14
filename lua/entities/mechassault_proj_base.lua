AddCSLuaFile()

ENT.Type 					= "anim"

ENT.Author 					= "TankNut"

ENT.Spawnable 				= false
ENT.AdminSpawnable 			= false

ENT.AutomaticFrameAdvance	= true

ENT.Model 					= Model("models/weapons/w_missile_launch.mdl")

ENT.Velocity 				= 3000
ENT.HullSize 				= 10

function ENT:Initialize()
	self:SetModel(self.Model)
	self:DrawShadow(false)

	if SERVER then
		self:PhysicsInitSphere(self.HullSize, "metal")
		self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

		local phys = self:GetPhysicsObject()

		if IsValid(phys) then
			phys:EnableDrag(false)
			phys:EnableGravity(false)
			phys:SetBuoyancyRatio(0)
			phys:Wake()
			phys:SetVelocity(self:GetAngles():Forward() * self.Velocity)
		end
	end
end

if SERVER then
	function ENT:PhysicsCollide(data, phys)
		SafeRemoveEntity(self)
	end
end