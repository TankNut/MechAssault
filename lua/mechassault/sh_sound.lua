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

local pulse = {
	{"MA2_Weapon.PulseLaser1", Sound("mechassault_2/weapons/pulse_laser_lvl1.ogg")},
	{"MA2_Weapon.PulseLaser2", Sound("mechassault_2/weapons/pulse_laser_lvl2.ogg")},
	{"MA2_Weapon.PulseLaser3", Sound("mechassault_2/weapons/pulse_laser_lvl3.ogg")},
}

for _, v in pairs(pulse) do
	sound.Add({
		name = v[1],
		channel = CHAN_WEAPON,
		volume = 1,
		level = 140,
		pitch = {95, 110},
		sound = v[2]
	})
end

local javelin = {
	{"MA2_Weapon.Javelin1", Sound("mechassault_2/weapons/javelin_lvl1.ogg")},
	{"MA2_Weapon.Javelin2", Sound("mechassault_2/weapons/javelin_lvl2.ogg")},
	{"MA2_Weapon.Javelin3", Sound("mechassault_2/weapons/javelin_lvl3.ogg")},
}

for _, v in pairs(javelin) do
	sound.Add({
		name = v[1],
		channel = CHAN_WEAPON,
		volume = 1,
		level = 140,
		pitch = {95, 110},
		sound = v[2]
	})
end