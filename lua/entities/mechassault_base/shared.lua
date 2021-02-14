LOCAL_STEP_SIZE = 16
LOCAL_STEP_HEIGHT = 18
MOVE_HEIGHT_EPSILON = 0.0625

STATE_IDLE 		= 0
STATE_COMBAT 	= 1

AddCSLuaFile()

ENT.Type 					= "anim"

ENT.RenderGroup 			= RENDERGROUP_OPAQUE

ENT.AutomaticFrameAdvance 	= true

ENT.PrintName 				= "Mad Dog"
ENT.Author 					= "TankNut"

ENT.Category 				= "MechAssault"

ENT.Spawnable 				= true

ENT.PhysgunDisabled 		= false
ENT.m_tblToolsAllowed 		= nil

ENT.HullMin 				= Vector(-128, -128, 0)
ENT.HullMax 				= Vector(128, 128, 365)

ENT.Model 					= Model("models/mechassault_2/mechs/mad_dog.mdl")

ENT.ViewOffset 				= Vector(-500, 0, 200)

ENT.Margin 					= 1.1
ENT.StandRate 				= 0.5

ENT.WeaponAttachments 		= {1, 2, 3, 4}
ENT.AimOffset 				= Vector(0, 0, 100)

include("sh_animation.lua")
include("sh_move.lua")
include("sh_step.lua")

function ENT:Initialize()
	self:SetModel(self.Model)
	self:SetupPhysics(self.HullMin, self.HullMax)

	self:ResetSequence("power_down")
	self:SetCycle(1)

	self:SetPlaybackRate(self.StandRate)

	if SERVER then
		self:SetUseType(SIMPLE_USE)
	end
end

function ENT:SetupDataTables()
	self:NetworkVar("Entity", 0, "Player")

	self:NetworkVar("Vector", 0, "MoveSpeed")

	self:NetworkVar("Angle", 0, "ForcedAngle")
	self:NetworkVar("Angle", 1, "AimAngle")

	self:NetworkVar("Bool", 0, "Running")
	self:NetworkVar("Bool", 1, "ThirdPerson")

	self:NetworkVar("Float", 0, "StandTimer")
	self:NetworkVar("Float", 1, "NextAttack")

	self:SetForcedAngle(Angle(0, 0, 180))
	self:SetAimAngle(Angle(0, self:GetAngles().y, 0))
	self:SetThirdPerson(true)
end

function ENT:SetupPhysics(mins, maxs)
	if IsValid(self.PhysCollide) then
		self.PhysCollide:Destroy()
	end

	self.PhysCollide = CreatePhysCollideBox(mins, maxs)
	self:SetCollisionBounds(mins, maxs)

	if CLIENT then
		self:SetRenderBounds(mins, maxs)
	else
		self:PhysicsInitBox(mins, maxs)
		self:SetMoveType(MOVETYPE_STEP)
		self:SetSolid(SOLID_BBOX)

		self:GetPhysicsObject():EnableMotion(false)
	end

	self:EnableCustomCollisions(true)
end

function ENT:Think()
	self:NextThink(CurTime())

	self:UpdateAnimation()

	return true
end

function ENT:GetAimOrigin()
	return self:WorldSpaceCenter() + self.AimOffset
end

function ENT:GetAimPos()
	return util.TraceLine({
		start = self:GetAimOrigin(),
		endpos = self:GetAimOrigin() + self:GetAimAngle():Forward() * 32768,
		filter = {self}
	}).HitPos
end

function ENT:AllowControl()
	return self:GetStandTimer() <= CurTime()
end

function ENT:Attack()
	if self:GetNextAttack() > CurTime() then
		return
	end

	if SERVER then
		self:EmitSound("MECHASSAULT_2/laser_lvl2.ogg")
		for _, v in ipairs(self.WeaponAttachments) do
			local attachment = self:GetAttachment(v)

			local ent = ents.Create("mechassault_laser_lvl1")

			ent:SetPos(attachment.Pos)
			ent:SetAngles((self:GetAimPos() - attachment.Pos):Angle())
			ent:SetOwner(self)

			ent:Spawn()
			ent:Activate()
		end
	end

	self:SetNextAttack(CurTime() + 0.5)
end

function ENT:SecondaryAttack()
end

function ENT:TestCollision(start, delta, isbox, extends)
	if not IsValid(self.PhysCollide) then
		return
	end

	local max = extends
	local min = -extends

	max.z = max.z - min.z
	min.z = 0

	local hit, norm, frac = self.PhysCollide:TraceBox(self:GetPos(), angle_zero, start, start + delta, min, max)

	if not hit then
		return
	end

	return {
		HitPos = hit,
		Normal = norm,
		Fraction = frac
	}
end

if CLIENT then
	function ENT:Draw(studio)
		self:SetupBones()
		self:DrawModel()
	end
else
	function ENT:Use(ply)
		self:SetCycle(0)
		self:SetSequence("power_up")

		self:SetStandTimer(CurTime() + self:SequenceDuration() / self.StandRate)

		drive.PlayerStartDriving(ply, self, "drive_mechassault")
	end
end