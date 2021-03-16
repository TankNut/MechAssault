AddCSLuaFile()

hook.Add("EntityEmitSound", "mechassault", function(snd)
	if snd.OriginalSoundName == "MA2_Mech.Step" then
		snd.SoundName = string.format("mechassault_2/mechs/mech_step_%s.ogg", math.random(1, 4)) -- We just want something random, not mech_step_1 through 4 in order

		return true
	end
end)

sound.Add({
	name = "MA2_Mech.Step",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = {
		Sound("mechassault_2/mechs/mech_step_1.ogg"),
		Sound("mechassault_2/mechs/mech_step_2.ogg"),
		Sound("mechassault_2/mechs/mech_step_3.ogg"),
		Sound("mechassault_2/mechs/mech_step_4.ogg")
	}
})

sound.Add({
	name = "MA2_BA.Step",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/mechs/battlearmor/battlearmor_step.ogg")
})

sound.Add({
	name = "MA2_Mech.JJStart",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/mechs/jumpjets_start.ogg")
})

sound.Add({
	name = "MA2_Mech.JJLoop",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/mechs/jumpjets_loop.wav")
})

sound.Add({
	name = "MA2_Mech.JJEnd",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/mechs/jumpjets_end.ogg")
})

sound.Add({
	name = "MA2_Mech.BJJStart",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/mechs/battlearmor/jumpjets_start.wav")
})

sound.Add({
	name = "MA2_Mech.BJJLoop",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/mechs/battlearmor/jumpjets_loop.wav")
})

sound.Add({
	name = "MA2_Mech.BJJEnd",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/mechs/battlearmor/jumpjets_end.ogg")
})

sound.Add({
	name = "MA2_Misc.Salvage",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = Sound("mechassault_2/items/salvage.ogg")
})

local sounds = {
	{"MA2_Weapon.Autocannon1", Sound("mechassault_2/weapons/autocannon_lvl1.ogg")},
	{"MA2_Weapon.Autocannon2", Sound("mechassault_2/weapons/autocannon_lvl2.ogg")},
	{"MA2_Weapon.Autocannon3", Sound("mechassault_2/weapons/autocannon_lvl3.ogg")},
	{"MA2_Weapon.Crossbow1", Sound("mechassault_2/weapons/crossbow_lvl1.ogg")},
	{"MA2_Weapon.Crossbow2", Sound("mechassault_2/weapons/crossbow_lvl2.ogg")},
	{"MA2_Weapon.Crossbow3", Sound("mechassault_2/weapons/crossbow_lvl3.ogg")},
	{"MA2_Weapon.Flame1", Sound("mechassault_2/weapons/flamer_lvl1.ogg")},
	{"MA2_Weapon.Flame2", Sound("mechassault_2/weapons/flamer_lvl2.ogg")},
	{"MA2_Weapon.Flame3", Sound("mechassault_2/weapons/flamer_lvl3.ogg")},
	{"MA2_Weapon.Gauss1", Sound("mechassault_2/weapons/gauss_lvl1.ogg")},
	{"MA2_Weapon.Gauss2", Sound("mechassault_2/weapons/gauss_lvl2.ogg")},
	{"MA2_Weapon.Gauss3", Sound("mechassault_2/weapons/gauss_lvl3.ogg")},
	{"MA2_Weapon.Hammer1", Sound("mechassault_2/weapons/hammer_lvl1.ogg")},
	{"MA2_Weapon.Hammer2", Sound("mechassault_2/weapons/hammer_lvl2.ogg")},
	{"MA2_Weapon.Hammer3", Sound("mechassault_2/weapons/hammer_lvl3.ogg")},
	{"MA2_Weapon.Javelin1", Sound("mechassault_2/weapons/javelin_lvl1.ogg")},
	{"MA2_Weapon.Javelin2", Sound("mechassault_2/weapons/javelin_lvl2.ogg")},
	{"MA2_Weapon.Javelin3", Sound("mechassault_2/weapons/javelin_lvl3.ogg")},
	{"MA2_Weapon.Laser1", Sound("mechassault_2/weapons/laser_lvl1.ogg")},
	{"MA2_Weapon.Laser2", Sound("mechassault_2/weapons/laser_lvl2.ogg")},
	{"MA2_Weapon.Laser3", Sound("mechassault_2/weapons/laser_lvl3.ogg")},
	{"MA2_Weapon.Machinegun1", Sound("mechassault_2/weapons/machinegun_lvl1.ogg")},
	{"MA2_Weapon.Machinegun2", Sound("mechassault_2/weapons/machinegun_lvl2.ogg")},
	{"MA2_Weapon.Machinegun3", Sound("mechassault_2/weapons/machinegun_lvl3.ogg")},
	{"MA2_Weapon.Mortar1", Sound("mechassault_2/weapons/mortar_lvl1.ogg")},
	{"MA2_Weapon.Mortar2", Sound("mechassault_2/weapons/mortar_lvl2.ogg")},
	{"MA2_Weapon.Mortar3", Sound("mechassault_2/weapons/mortar_lvl3.ogg")},
	{"MA2_Weapon.PlasmaPPC1", Sound("mechassault_2/weapons/ppc_lvl3.ogg")},
	{"MA2_Weapon.PlasmaPPC2", Sound("mechassault_2/weapons/ppc_lvl3.ogg")},
	{"MA2_Weapon.PlasmaPPC3", Sound("mechassault_2/weapons/ppc_lvl3.ogg")},
	{"MA2_Weapon.PPC1", Sound("mechassault_2/weapons/ppc_lvl1.ogg")},
	{"MA2_Weapon.PPC2", Sound("mechassault_2/weapons/ppc_lvl2.ogg")},
	{"MA2_Weapon.PPC3", Sound("mechassault_2/weapons/ppc_lvl3.ogg")},
	{"MA2_Weapon.PPCChargeLoop", {Sound("mechassault_2/weapons/ppc_charge_loop_1.ogg"), Sound("mechassault_2/weapons/ppc_charge_loop_2.ogg")}, CHAN_AUTO},
	{"MA2_Weapon.PPCCharging", {Sound("mechassault_2/weapons/ppc_charge.ogg"), Sound("mechassault_2/weapons/ppc_charge_1.ogg"), Sound("mechassault_2/weapons/ppc_charge_2.ogg")}},
	{"MA2_Weapon.PulseLaser1", Sound("mechassault_2/weapons/pulse_laser_lvl1.ogg")},
	{"MA2_Weapon.PulseLaser2", Sound("mechassault_2/weapons/pulse_laser_lvl2.ogg")},
	{"MA2_Weapon.PulseLaser3", Sound("mechassault_2/weapons/pulse_laser_lvl3.ogg")}
}

for _, v in pairs(sounds) do
	sound.Add({
		name = v[1],
		channel = v[3] or CHAN_WEAPON,
		volume = 1,
		level = 140,
		pitch = {95, 110},
		sound = v[2]
	})
end

sound.Add({
	name = "MA2_Weapon.MissileHit",
	channel = CHAN_AUTO,
	volume = 1,
	level = 140,
	pitch = {95, 110},
	sound = {
		Sound("mechassault_2/weapons/explosion_generic_1.ogg"),
		Sound("mechassault_2/weapons/explosion_generic_2.ogg"),
		Sound("mechassault_2/weapons/explosion_generic_3.ogg"),
		Sound("mechassault_2/weapons/explosion_generic_4.ogg")
	}
})

sound.Add({
	name = "MA2_Weapon.HammerImpact",
	channel = CHAN_AUTO,
	volume = 1,
	level = 90,
	pitch = {95, 110},
	sound = Sound("mechassault_2/weapons/hammer_impact.ogg")
})

sound.Add({
	name = "MA2_Weapon.HammerExplode",
	channel = CHAN_AUTO,
	volume = 1,
	level = 140,
	pitch = {95, 110},
	sound = Sound("mechassault_2/weapons/hammer_explode.ogg")
})

sound.Add({
	name = "MA2_Weapon.MortarHit",
	channel = CHAN_AUTO,
	volume = 1,
	level = 140,
	pitch = {95, 110},
	sound = {
		Sound("mechassault_2/weapons/mortar_impact_1.ogg"),
		Sound("mechassault_2/weapons/mortar_impact_2.ogg")
	}
})

sound.Add({
	name = "MA2_Weapon.LaserHit",
	channel = CHAN_AUTO,
	volume = 1,
	level = 90,
	pitch = {75, 90},
	sound = Sound("mechassault_2/weapons/laser_impact_mech.ogg")
})

sound.Add({
	name = "MA2_Weapon.AutocannonHit",
	channel = CHAN_AUTO,
	volume = 1,
	level = 90,
	pitch = {95, 110},
	sound = {
		Sound("mechassault_2/weapons/bullet_ric_4.ogg"),
		Sound("mechassault_2/weapons/bullet_ric_11.ogg"),
		Sound("mechassault_2/weapons/bullet_ric_17.ogg"),
		Sound("mechassault_2/weapons/bullet_ric_18.ogg")
	}
})

sound.Add({
	name = "MA2_Weapon.PPCHit",
	channel = CHAN_AUTO,
	volume = 1,
	level = 90,
	pitch = {95, 110},
	sound = Sound("mechassault_2/weapons/ppc_impact.ogg")
})
