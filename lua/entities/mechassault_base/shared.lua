LOCAL_STEP_SIZE = 16
LOCAL_STEP_HEIGHT = 18
MOVE_HEIGHT_EPSILON = 0.0625

STATE_IDLE 		= 0
STATE_COMBAT 	= 1

AddCSLuaFile()

ENT.Type 					= "anim"
ENT.AutomaticFrameAdvance 	= true

ENT.PrintName 				= "Mad Dog"
ENT.Author 					= "TankNut"

ENT.Category 				= "MechAssault"
ENT.Spawnable 				= true

ENT.PhysgunDisabled 		= false
ENT.m_tblToolsAllowed 		= nil

ENT.HullMin 				= Vector(-140, -140, 0)
ENT.HullMax 				= Vector(140, 140, 420)

ENT.Model 					= Model("models/mechassault_2/mechs/mad_dog.mdl")

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.Margin 					= 1.1
ENT.StandRate 				= 0.5

include("sh_animation.lua")
include("sh_move.lua")
include("sh_step.lua")

ENT.WeaponTypes = {}
ENT.WeaponLoadout = {
	{Type = "Laser", Level = 1}
}

include("weapons/weapon_laser.lua")

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

	self:NetworkVar("Int", 0, "CurrentWeapon")

	for k, v in ipairs(self.WeaponLoadout) do
		local name = "WeaponLevel" .. k

		self:NetworkVar("Int", k, name)
		self["Set" .. name](self, v.Level)
	end

	self:SetForcedAngle(Angle(0, 0, 180))
	self:SetAimAngle(Angle(0, self:GetAngles().y, 0))
	self:SetThirdPerson(true)
	self:SetCurrentWeapon(1)
end

function ENT:GetWeaponLevel(index)
	return self["GetWeaponLevel" .. index](self)
end

function ENT:SetWeaponLevel(index, level)
	self["SetWeaponLevel" .. index](self, level)
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
	return self:WorldSpaceCenter() + Vector(0, 0, self.ViewOffset.z)
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

function ENT:UpgradeWeapon(weaponType)
	for k, v in ipairs(self.WeaponLoadout) do
		local class = self.WeaponTypes[v.Type]

		if class.Type == weaponType then
			self:SetWeaponLevel(k, math.min(self:GetWeaponLevel(k) + 1, class.MaxLevel))

		end
	end
end

function ENT:Attack()
	if self:GetNextAttack() > CurTime() then
		return
	end

	local index = self:GetCurrentWeapon()
	local weapon = self.WeaponLoadout[index]
	local class = self.WeaponTypes[weapon.Type]

	self[class.Function](self, class, self:GetWeaponLevel(index))
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