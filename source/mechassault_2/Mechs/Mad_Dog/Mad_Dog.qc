// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/mad_dog.mdl"


$scale	1.15
$attachment "pulse_laser_R1" "joint_rgun" -18.00 -146.00 -8.50 rotate -0 -90 0
$attachment "pulse_laser_R2" "joint_rgun" 6.00 -162.00 0.50 rotate -0 -90 0
$attachment "pulse_laser_L1" "joint_lgun" 17.00 -146.00 -8.50 rotate -0 -90 0
$attachment "pulse_laser_L2" "joint_lgun" -7.00 -162.00 0.50 rotate -0 -90 0
$attachment "machinegun_1" "joint_torso" -42.00 -112.00 38.50 rotate -0 -90 0
$attachment "machinegun_2" "joint_torso" 42.00 -112.00 38.50 rotate -0 -90 0
$scale	1
$attachment "rocketpod_R" "joint_torso" -55.80 28.75 121.33 rotate -0 -90 0
$attachment "rocketpod_L" "joint_torso" 55.80 28.75 121.33 rotate -0 -90 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$scale	1
$attachment "battlearmor_attach" "joint_torso" 0.00 110.00 70.00 rotate -0 -90 0
$scale 37
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "Mad Dog Hips.smd"
}
$BodyGroup "Torso"
{
	studio "Mad Dog Torso.smd"
}	


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\mad_dog\"

$texturegroup "skinfamilies"
{
	{ "MadDog_Body"      	 "Reac_Glow"	"maddog_missile"}
	{ "Vulture_body" 	"Reac_Glow"	"Vulture_missile"}
	{ "MadDog_Body_MP" 		"Reac_GlowMP"		"maddog_missile_MP"}
	{ "Vulture_body_MP" 		"Reac_GlowMP"		"Vulture_missile_MP"}
}

$weightlist weights_proportions {

"joint_ROOT" 0
"joint_hipbelow" 1
"joint_ruleg" 1
"joint_luleg" 1

}

$weightlist weights_damage_arms {

"joint_torso" 0
"joint_rgun" 1
"joint_lgun" 1

}

$weightlist weights_damage_upper {

"joint_ROOT" 0
"joint_torso" 1
"joint_hipabove" 1
"joint_rgun" 1
"joint_lgun" 1
}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL


$Animation "a_idle" "vtr_anims\vtr_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "vtr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "vtr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "vtr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "vtr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "vtr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "vtr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "vtr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "vtr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "vtr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "vtr_anims\vtr_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "vtr_anims\vtr_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "vtr_anims\vtr_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "vtr_anims\vtr_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "vtr_anims\vtr_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "vtr_anims\vtr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "vtr_anims\vtr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "vtr_anims\vtr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0

$sequence "aimlayer_generic" {
	"aim_up_right" "aim_up_center"  "aim_up_left"
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	"aim_down_right" "aim_down_center"  "aim_down_left"
	blend "aim_yaw" -180 180
	blend "aim_pitch" -0.1 0.1
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$Sequence "walk" {
	"a_walk_NW"
	"a_walk_N"
	"a_walk_NE"
	"a_walk_W"
	"a_idle"
	"a_walk_E"
	"a_walk_SW"
	"a_walk_S"
	"a_walk_SE"
	activity "ACT_WALK" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 17 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"vtr_anims\vtr_standrgimp.smd"
	"a_walk_limp_E"
	"a_walk_limp_SW"
	"a_walk_limp_S"
	"a_walk_limp_SE"
	activity "ACT_WALK_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 32 "MA2_Mech.Step" }
}

$Sequence "run" {
	"a_run_NW"
	"a_run_N"
	"a_run_NE"
	"a_run_W"
	"a_idle"
	"a_run_E"
	"a_run_SW"
	"a_run_S"
	"a_run_SE"
	activity "ACT_RUN" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 16 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"vtr_anims\vtr_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"vtr_anims\vtr_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"vtr_anims\vtr_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"vtr_anims\vtr_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"vtr_anims\vtr_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 26 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 56 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"vtr_anims\vtr_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 26 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 56 "MA2_Mech.Step" }
}

$sequence "hit_back" {
	"a_hit_back"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
//	weightlist	"weights_damage_upper"
}

$sequence "hit_front" {
	"a_hit_front"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
//	weightlist	"weights_damage_upper"
}


$sequence "jump" {
	"vtr_anims\vtr_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"vtr_anims\vtr_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"vtr_anims\vtr_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"vtr_anims\vtr_standrgimp2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"vtr_anims\vtr_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 17 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"vtr_anims\vtr_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"vtr_anims\vtr_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Mad Dog Torso.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Mad Dog Torso.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "maddog_physics.smd" {

	$mass 45000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_torso" x limit -15.00 5.00 0.00
	$jointconstrain "joint_torso" y limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" z limit -180.00 180.00 0.00

	$jointconstrain "joint_lgun" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" y limit 0.00 35.00 0.00
	$jointconstrain "joint_lgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_luleg" x limit -50.00 30.00 0.00
	$jointconstrain "joint_luleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_luleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ldleg" x limit -50.00 50.00 0.00
	$jointconstrain "joint_ldleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rgun" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" y limit -35.00 0.00 0.00
	$jointconstrain "joint_rgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ruleg" x limit -50.00 30.00 0.00
	$jointconstrain "joint_ruleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_ruleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rdleg" x limit -50.00 50.00 0.00
	$jointconstrain "joint_rdleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -15.00 15.00 0.00
	$jointconstrain "joint_rankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" z limit -10.00 35.00 0.00

	$jointconstrain "joint_lankle" x limit -15.00 15.00 0.00
	$jointconstrain "joint_lankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lankle" z limit -10.00 35.00 0.00

	$jointcollide joint_rankle joint_ldleg
	$jointcollide joint_lankle joint_rdleg
	$jointcollide joint_lankle joint_rankle
	$jointcollide joint_rdleg joint_ldleg
	$jointcollide joint_ruleg joint_luleg
}
$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin"		"1.000000"
		"animfrictionmax"		"400.000000"
		"animfrictiontimein"		"0.500000"
		"animfrictiontimeout"		"0.300000"
		"animfrictiontimehold"		"0.000000"
	}
	editparams 
	{
		"rootname"		"joint_ROOT"
		"totalmass"		"90.000000"
//		"jointmerge"		"joint_ROOT,B"
//		"jointmerge"		"joint_ROOT,joint_torso"
	}
}

$scale 0.9

// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 2 "joint_ROOT"	   -39.64  -58.81   -8.42    39.81   80.90   44.17
$hbox 7 "joint_ruleg"	   -49.89  -18.04  -80.43     7.51   79.54   36.89
$hbox 7 "joint_rdleg"	   -38.82  -58.18  -94.28    29.71   56.39   39.60
$hbox 7 "joint_rankle"	   -36.53  -25.85  -47.37    31.39   50.47   13.00
$hbox 7 "joint_rotoe"	   -23.16  -38.29   -9.51     7.55    8.76   10.61
$hbox 7 "joint_ritoe"	   -10.45  -35.38   -9.51    20.26   12.04   10.61
$hbox 7 "joint_rbtoe"	   -16.81    0.00   -9.50    13.92   51.53   10.62
$hbox 6 "joint_luleg"	    -8.01  -18.07  -80.14    49.45   79.68   37.03
$hbox 6 "joint_ldleg"	   -31.05  -58.16  -93.58    37.20   56.54   40.08
$hbox 6 "joint_lankle"	   -32.83  -25.81  -47.66    35.09   50.47   12.71
$hbox 6 "joint_lotoe"	    -8.90  -36.99   -9.10    21.81   10.79   11.01
$hbox 6 "joint_litoe"	   -21.21  -36.39   -9.10     9.50   11.17   11.01
$hbox 6 "joint_lbtoe"	   -13.31    0.00   -9.09    17.43   51.58   11.03
$hbox 3 "joint_torso"	   -94.53 -125.09    0.00    94.47  131.21  155.90
$hbox 3 "joint_torsoabove"	   -77.00    0.00    0.00    76.74   43.73   83.44
$hbox 5 "joint_ruarm"	   -45.78    0.00  -53.25     1.29   31.86   14.85
$hbox 5 "joint_rgun"	   -33.09 -159.41  -26.15    27.39   45.33   26.35
$hbox 4 "joint_luarm"	    -2.85    0.00  -53.25    44.23   31.86   14.85
$hbox 4 "joint_lgun"	   -28.29 -159.25  -26.08    32.19   45.49   26.42

// .qc block generated by HLMV ends.

