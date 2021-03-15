DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.YawLimit 				= 100

include("sh_states.lua")

function ENT:SetupAnimationLayers()
	BaseClass.SetupAnimationLayers(self)

	self:AddLayeredSequence(self:LookupSequence("fire"))
	self:SetLayerWeight(1, 0)
end

function ENT:SetupDataTables()
	BaseClass.SetupDataTables(self)

	self:NetworkVar("Float", 4, "WeaponAnimationTimer")
end

function ENT:Attack()
	if self:GetNextAttack() > CurTime() then
		return
	end

	local yaw = self:GetAimYaw()

	if yaw < -self.YawLimit or yaw > self.YawLimit then
		return
	end

	local weapon, class, level = self:GetWeaponData()

	if self:GetCurrentWeapon() == 1 then
		self:SetWeaponAnimationTimer(CurTime() + 1)
	end

	self:Invoke(class.Function, class, level, weapon.Attachments)

	self:SetLayerCycle(1, 0)
end

function ENT:UpdateAnimation()
	BaseClass.UpdateAnimation(self)

	local time = self:GetWeaponAnimationTimer() - CurTime()

	time = math.Clamp(math.Remap(time, 0, 0.2, 0, 1), 0, 1)

	self:SetLayerWeight(1, time)
end

function ENT:GetAimYaw()
	local offset = self:WorldToLocal(self:GetAimPos())

	offset.z = 0
	offset:Normalize()

	return math.NormalizeAngle(offset:Angle().y)
end

function ENT:UpdateAimAngle()
	local ply = self:GetPlayer()
	local yaw = 0

	if IsValid(ply) and self:AllowInput() then
		yaw = self:GetAimYaw()
	end

	if yaw < -self.YawLimit or yaw > self.YawLimit then
		yaw = 0
	end

	self:SetPoseParameter("aim_yaw", yaw)
end

PrecacheParticleSystem("gm_MA2_BA_JumpJets")

function ENT:HandleJumpJets(mv)
	local flying = false
	local start = mv:GetOrigin()

	if mv:KeyDown(IN_JUMP) then
		flying = true

		start = mv:GetOrigin() + Vector(0, 0, self:GetSpeeds()) * FrameTime()

		if not self:GetUsingJets() then
			self:SetUsingJets(true)

			for _, v in pairs(self.JumpJets) do
				ParticleEffectAttach("gm_MA2_BA_JumpJets", PATTACH_POINT_FOLLOW, self, v)
			end

			if SERVER then
				self:EmitSound("MA2_Mech.JJStart")
				self:EmitSound("MA2_Mech.JJLoop")
			end
		end
	elseif self:GetUsingJets() then
		self:SetUsingJets(false)

		if SERVER then
			net.Start("nMAStopEffect")
				net.WriteEntity(self)
				net.WriteString("gm_MA2_BA_JumpJets")
			net.Broadcast()

			self:StopSound("MA2_Mech.JJLoop")
			self:EmitSound("MA2_Mech.JJEnd")
		end
	end

	return flying, start
end