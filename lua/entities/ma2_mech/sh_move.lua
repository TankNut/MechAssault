AddCSLuaFile()

function ENT:HasMoveInput(mv)
	return mv:GetForwardSpeed() != 0 or mv:GetSideSpeed() != 0
end

function ENT:GetSpeeds()
	return 300, 600
end

function ENT:GetAnimationSpeeds()
	return 200, 350
end

function ENT:GetSpeedData(mv)
	local length = mv:GetVelocity():Length()

	local walk, run = self:GetSpeeds()

	local speed = 0
	local accel = 0

	if self:HasMoveInput(mv) then
		speed = mv:KeyDown(IN_SPEED) and run or walk
		accel = mv:KeyDown(IN_SPEED) and run or (length > walk * self.Margin and run or walk)
	else
		speed = 0
		accel = self:GetRunning() and run or walk
	end

	return speed, accel + 1000
end

function ENT:GetSurfacePoint(func, start, endpos)
	local tr
	local trace = {
		filter = function(ent)
			if ent == self or ent:GetOwner() == self then
				return false
			end

			return not scripted_ents.IsTypeOf(ent:GetClass(), "ma2_salvage")
		end
	}

	trace.start = func(Vector(0, 0, self.Height * 0.5))
	trace.endpos = func(start)

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, debugTime, color_white, true)

	if tr.Hit or not endpos then
		return tr
	end

	trace.start = func(start)
	trace.endpos = func(endpos)

	tr = util.TraceLine(trace)

	debugoverlay.Line(tr.StartPos, tr.HitPos, debugTime, color_white, true)

	return tr
end

function ENT:StartMove(ply, mv, cmd)
	mv:SetOrigin(self:GetNetworkOrigin())
	mv:SetVelocity(self:GetMoveSpeed())
	mv:SetOldAngles(self:GetAngles())

	local wheel = cmd:GetMouseWheel()

	if wheel != 0 then
		self:SwitchWeapon(wheel)
	end

	local dot = self:GetUp():Dot(self:GetAimAngle():Up())

	if (mv:KeyPressed(IN_MOVELEFT) or mv:KeyPressed(IN_MOVERIGHT)) then
		self:SetFlippedMode(dot < 0)
	end

	if self:GetFlippedMode() then
		mv:SetSideSpeed(-mv:GetSideSpeed())
	end

	return mv:KeyPressed(IN_USE)
end

function ENT:Trace(start, endpos)
	local mins = Vector(-self.Radius, -self.Radius, 0)
	local maxs = Vector(self.Radius, self.Radius, self.Height)
	local tr = util.TraceHull({
		start = start,
		endpos = endpos,
		mins = mins,
		maxs = maxs,
		filter = function(ent)
			if ent == self or ent:GetOwner() == self then
				return false
			end

			return not scripted_ents.IsTypeOf(ent:GetClass(), "ma2_salvage")
		end
	})

	debugoverlay.SweptBox(tr.StartPos, tr.HitPos, mins, maxs, angle_zero, debugTime, color_white)

	return tr
end

function ENT:Move(mv)
	if mv:KeyDown(IN_WALK) then
		local forced = self:GetForcedAngle()

		forced = forced.r != 180 and forced or mv:GetMoveAngles()

		self:SetForcedAngle(forced)

		mv:SetMoveAngles(forced)
	else
		self:SetForcedAngle(Angle(0, 0, 180))
	end

	self:SetAimAngle(mv:GetMoveAngles())

	if mv:KeyDown(IN_ATTACK) then
		self:Attack()
	end

	if mv:KeyDown(IN_ATTACK2) then
		self:SecondaryAttack()
	end

	self:UpdateWeapon(mv)

	local vel = mv:GetVelocity()
	local speed, accel = self:GetSpeedData(mv)

	if accel > 0 and self:GetFallTimer() == 0 then
		local aimPos = self:GetAimPos()
		local offset = WorldToLocal(aimPos, angle_zero, mv:GetOrigin(), mv:GetOldAngles())

		offset.z = 0
		offset:Normalize()

		local dir = Vector(mv:GetForwardSpeed(), -mv:GetSideSpeed(), 0):GetNormalized()

		offset:Rotate(dir:Angle())
		offset:Rotate(mv:GetOldAngles())
		offset:Normalize()
		offset:Mul(speed)

		vel:Approach(offset, accel * FrameTime())
	end

	mv:SetVelocity(vel)

	local dir = self:HandleMove(mv)

	mv:SetVelocity(dir * mv:GetVelocity():Length())

	if mv:GetVelocity():Length() > 0 then
		local ang = mv:GetVelocity():Angle()

		ang.p = 0

		mv:SetOldAngles(ang)
	end
end

PrecacheParticleSystem("gm_MA2_JumpJets_Main")
PrecacheParticleSystem("gm_MA2_JumpJets_Small")

function ENT:HandleJumpJets(mv)
	local flying = false
	local start = mv:GetOrigin()

	if mv:KeyDown(IN_JUMP) then
		flying = true

		start = mv:GetOrigin() + Vector(0, 0, self:GetSpeeds()) * FrameTime()

		if not self:GetUsingJets() then
			self:SetUsingJets(true)

			ParticleEffectAttach("gm_MA2_JumpJets_Main", PATTACH_POINT_FOLLOW, self, self.JumpJets[1])
			ParticleEffectAttach("gm_MA2_JumpJets_Small", PATTACH_POINT_FOLLOW, self, self.JumpJets[2])
			ParticleEffectAttach("gm_MA2_JumpJets_Small", PATTACH_POINT_FOLLOW, self, self.JumpJets[3])

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
				net.WriteString("gm_MA2_JumpJets_Main")
			net.Broadcast()

			net.Start("nMAStopEffect")
				net.WriteEntity(self)
				net.WriteString("gm_MA2_JumpJets_Small")
			net.Broadcast()

			self:StopSound("MA2_Mech.JJLoop")
			self:EmitSound("MA2_Mech.JJEnd")
		end
	end

	return flying, start
end

local stepOffset = 0.0625

function ENT:HandleMove(mv)
	local dist = (mv:GetVelocity() * FrameTime()):Length()

	local cleared = 0

	local start

	local dir = mv:GetVelocity():GetNormalized()
	local size = 0

	local first = true
	local flying = false

	if self.JumpJets then
		flying, start = self:HandleJumpJets(mv)
	else
		start = mv:GetOrigin()
	end

	while true do
		size = math.min(16, dist - cleared)

		if size < 0.001 and not first then
			break
		end

		first = false

		for i = 1, 16 do
			local endPos = start + (dir * size)
			local normal

			local stepStart = Vector(start.x, start.y, start.z + stepOffset)
			local stepEnd = Vector(endPos.x, endPos.y, stepStart.z)

			local tr = self:Trace(stepStart, stepEnd)

			if tr.Fraction != 1 then
				local trStep = self:Trace(tr.HitPos, tr.HitPos + Vector(0, 0, self.StepHeight))

				stepStart = trStep.HitPos
				stepEnd.z = stepStart.z

				trStep = self:Trace(stepStart, stepEnd)

				if trStep.Fraction < 0.01 then
					normal = trStep.HitNormal
				else
					local width = (self.Radius * 2) / 3
					local stepDist = stepStart:DistToSqr(stepEnd)
					local required = width * width

					if stepDist < required then
						local trLand = self:Trace(stepStart, stepStart + (dir * width))

						if trLand.Fraction < 1 then
							normal = trLand.HitNormal
						end
					elseif trStep.HitPos:DistToSqr(stepStart) < required then
						normal = trStep.HitNormal
					end
				end

				if not normal then
					tr = trStep
				end

				if tr.Fraction < 1 then
					normal = tr.HitNormal
				end
			end

			stepStart = Vector(stepEnd)
			stepEnd.z = start.z - self.StepHeight - stepOffset

			if flying then
				self:SetFallTimer(FrameTime())
			else
				tr = self:Trace(stepStart, stepEnd)

				local pitch = math.NormalizeAngle(tr.HitNormal:Angle().p) + 90
				local height = tr.HitPos.z - start.z

				if height > 0 and not normal and pitch > 45 then
					normal = tr.HitNormal
				end

				if height < 0 and (tr.Fraction > 0.5 and pitch > 45) then
					self:SetFallTimer(self:GetFallTimer() + FrameTime())

					tr.HitPos = tr.StartPos + (physenv.GetGravity() * FrameTime() * self:GetFallTimer())
				else
					if SERVER and self:GetFallTimer() > 0 then
						self:AddGestureSequence(self:LookupSequence("land"))
					end

					self:SetFallTimer(0)
				end
			end

			if normal then
				normal.z = 0

				debugoverlay.Line(self:WorldSpaceCenter(), self:WorldSpaceCenter() + normal * 20, debugTime, Color(255, 0, 0), true)

				dir = dir - (normal * dir:Dot(normal))

				debugoverlay.Line(self:WorldSpaceCenter(), self:WorldSpaceCenter() + dir * 20, debugTime, Color(0, 2555, 0), true)
			else
				mv:SetOrigin(tr.HitPos + Vector(0, 0, stepOffset))

				break
			end
		end

		cleared = cleared + size
	end

	return dir
end

function ENT:FinishMove(mv)
	local pos = mv:GetOrigin()

	self:SetNetworkOrigin(pos)
	self:SetAngles(mv:GetOldAngles())

	self:SetMoveSpeed(mv:GetVelocity())

	local walk = self:GetSpeeds()

	self:SetRunning(mv:GetVelocity():Length() > walk * self.Margin)
end

function ENT:StopDriving()
	self:AbortWeaponTimer()

	self:SetMoveSpeed(vector_origin)
	self:SetState(STATE_POWERDOWN)
end

if CLIENT then
	function ENT:HandleThirdPersonView(ply, view)
		local ang = ply:EyeAngles()
		local pos = self:GetAimOrigin()

		local target = LocalToWorld(Vector(self.ViewOffset.x, 0, 0), angle_zero, pos, ang)

		local tr = util.TraceHull({
			start = pos,
			endpos = target,
			mins = Vector(-2, -2, -2),
			maxs = Vector(2, 2, 2),
			mask = MASK_SOLID_BRUSHONLY
		})

		ang.r = 0

		view.origin = tr.HitPos
		view.angles = ang
	end

	function ENT:CalcView(ply, view)
		self:HandleThirdPersonView(ply, view)
	end
end
