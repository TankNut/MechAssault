LOCAL_STEP_SIZE = 16
LOCAL_STEP_HEIGHT = 18
MOVE_HEIGHT_EPSILON = 0.0625

STATE_INVALID = 0
STATE_OFFLINE = 1
STATE_POWERUP = 2
STATE_ACTIVE = 3
STATE_POWERDOWN = 4
STATE_EXPLODING = 5

AddCSLuaFile()

ENT.Type 					= "anim"
ENT.AutomaticFrameAdvance 	= true

ENT.Author 					= "TankNut"

ENT.PhysgunDisabled 		= false
ENT.m_tblToolsAllowed 		= nil

ENT.HullMin 				= Vector(-140, -140, 0)
ENT.HullMax 				= Vector(140, 140, 420)

ENT.Model 					= Model("models/mechassault_2/mechs/mad_dog.mdl")
ENT.Skin 					= 0

ENT.ViewOffset 				= Vector(-500, 0, 240)

ENT.Margin 					= 1.1
ENT.StandRate 				= 0.5

ENT.MaxHealth 				= 3571

ENT.CoreAttachment 			= 9

include("sh_animation.lua")
include("sh_move.lua")
include("sh_step.lua")
include("sh_state.lua")

if CLIENT then
	include("cl_hud.lua")
else
	AddCSLuaFile("cl_hud.lua")
end

ENT.WeaponTypes = {}
ENT.WeaponLoadout = {}

include("weapons/weapon_laser.lua")
include("weapons/weapon_pulselaser.lua")
include("weapons/weapon_javelin.lua")
include("weapons/weapon_crossbow.lua")
include("weapons/weapon_autocannon.lua")

ENT.States = {}

include("states/state_offline.lua")
include("states/state_powerup.lua")
include("states/state_active.lua")
include("states/state_powerdown.lua")
include("states/state_exploding.lua")

if SERVER then
	function ENT:SpawnFunction(ply, tr, class)
		local ent = ents.Create(class)

		ent:SetAngles(Angle(0, ply:EyeAngles().y - 180, 0))

		ent:Spawn()
		ent:Activate()

		ent:SetPos(tr.HitPos)

		undo.Create(class)
			undo.AddEntity(ent)
			undo.SetPlayer(ply)
			undo.SetCustomUndoText("Undone " .. ent.PrintName)
		undo.Finish()

		return ent
	end
end

function ENT:Initialize()
	self:SetModel(self.Model)
	self:SetSkin(self.Skin)

	self:SetupPhysics(self.HullMin, self.HullMax)

	if SERVER then
		self:SetUseType(SIMPLE_USE)
		self:CreateBoneFollowers()

		local seat = ents.Create("prop_vehicle_prisoner_pod")

		seat:SetModel("models/props_lab/cactus.mdl")
		seat:SetPos(self:GetPos())
		seat:SetAngles(self:GetAngles())
		seat:SetKeyValue("limitview", 0, 0)
		seat:SetNoDraw(true)
		seat:Spawn()
		--seat:SetParent(self)

		seat.PhysgunDisabled = false
		seat.m_tblToolsAllowed = {}

		seat.Mechseat = true

		local phys = seat:GetPhysicsObject()

		if IsValid(phys) then
			phys:EnableMotion(false)
		end

		self:DeleteOnRemove(seat)
		self:SetSeat(seat)
	end

	for k, v in ipairs(self.WeaponLoadout) do
		self["SetWeaponLevel" .. k](self, v.Level)
	end

	self:SetForcedAngle(Angle(0, 0, 180))
	self:SetAimAngle(Angle(0, self:GetAngles().y, 0))
	self:SetThirdPerson(true)
	self:SetCurrentWeapon(1)

	self:SetMechHealth(self.MaxHealth)

	self:SetState(STATE_OFFLINE)
end

function ENT:SetupDataTables()
	self:NetworkVar("Entity", 0, "Player")
	self:NetworkVar("Entity", 1, "Seat")

	self:NetworkVar("Vector", 0, "MoveSpeed")

	self:NetworkVar("Angle", 0, "ForcedAngle")
	self:NetworkVar("Angle", 1, "AimAngle")

	self:NetworkVar("Bool", 0, "Running")
	self:NetworkVar("Bool", 1, "ThirdPerson")

	self:NetworkVar("Float", 0, "StateTimer")
	self:NetworkVar("Float", 1, "NextAttack")

	self:NetworkVar("Int", 0, "CurrentWeapon")
	self:NetworkVar("Int", 1, "CurrentState")
	self:NetworkVar("Int", 2, "MechHealth")

	for k, v in ipairs(self.WeaponLoadout) do
		local name = "WeaponLevel" .. k

		self:NetworkVar("Int", k + 2, name)
	end
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
		self:SetSolid(SOLID_NONE)

		self:GetPhysicsObject():EnableMotion(false)
	end

	self:EnableCustomCollisions(true)
end

function ENT:Think()
	self:NextThink(CurTime())

	self:UpdateAnimation()
	self:UpdateState()

	local seat = self:GetSeat()

	if IsValid(seat) then
		if CLIENT then
			seat:SetRenderOrigin(self:WorldSpaceCenter())
			seat:SetRenderAngles(angle_zero)
		else
			seat:SetPos(self:WorldSpaceCenter())
			seat:SetAngles(angle_zero)
		end
	end

	if SERVER then
		self:UpdateBoneFollowers()
	end

	return true
end

function ENT:GetAimOrigin()
	return self:WorldSpaceCenter() + Vector(0, 0, self.ViewOffset.z)
end

function ENT:GetAimTrace()
	return util.TraceLine({
		start = self:GetAimOrigin(),
		endpos = self:GetAimOrigin() + self:GetAimAngle():Forward() * 32768,
		filter = {self}
	})
end

function ENT:GetAimPos()
	return self:GetAimTrace().HitPos
end

function ENT:AllowInput()
	local state = self:GetStateTable()

	if state then
		return state.AllowInput or false
	end

	return false
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

	self[class.Function](self, class, self:GetWeaponLevel(index), weapon.Attachments)
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

function ENT:OnRemove()
	local ply = self:GetPlayer()

	if IsValid(ply) then
		ply:SetObserverMode(OBS_MODE_NONE)
	end
end

if CLIENT then
	function ENT:Draw(studio)
		self:SetupBones()
		self:DrawModel()
	end
else
	function ENT:CanEnter(ply)
		return self:GetCurrentState() == STATE_OFFLINE
	end

	function ENT:Use(ply)
		if not self:CanEnter(ply) then
			self:EmitSound("mechassault_2/ui/ui_low_hp.ogg")

			return
		end

		ply:SetNWEntity("mechassault", self)
		ply:EnterVehicle(self:GetSeat())

		self:SetPlayer(ply)

		self:SetState(STATE_POWERUP)
		self:SetCurrentWeapon(1)
	end

	function ENT:OnTakeDamage(dmg)
		self:SetMechHealth(self:GetMechHealth() - dmg:GetDamage())

		if self:GetCurrentState() != STATE_EXPLODING and self:GetMechHealth() <= 0 then
			self:SetState(STATE_EXPLODING)
		end
	end
end