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
		"mechassault_2/mechs/mech_step_1.ogg",
		"mechassault_2/mechs/mech_step_2.ogg",
		"mechassault_2/mechs/mech_step_3.ogg",
		"mechassault_2/mechs/mech_step_4.ogg"
	}
})

sound.Add({
	name = "MA2_Weapon.PulseLaser1",
	channel = CHAN_WEAPON,
	volume = 1,
	level = 140,
	pitch = {95, 110},
	sound = Sound("mechassault_2/weapons/pulse_laser_lvl1.ogg")
})

sound.Add({
	name = "MA2_Weapon.PulseLaser2",
	channel = CHAN_WEAPON,
	volume = 1,
	level = 140,
	pitch = {95, 110},
	sound = Sound("mechassault_2/weapons/pulse_laser_lvl2.ogg")
})

sound.Add({
	name = "MA2_Weapon.PulseLaser3",
	channel = CHAN_WEAPON,
	volume = 1,
	level = 140,
	pitch = {95, 110},
	sound = Sound("mechassault_2/weapons/pulse_laser_lvl3.ogg")
})