// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/mad_Cat.mdl"
$scale	1
$attachment "pulse_laser_R" "joint_rgun" -0.70 -167.90 -20.77 rotate -0 -90 0
$attachment "PPC_R" "joint_rgun" -0.40 -176.30 0.58 rotate -0 -90 0
$attachment "pulse_laser_L" "joint_lgun" -5.70 -167.90 -20.77 rotate -0 -90 0
$attachment "PPC_L" "joint_lgun" -5.40 -176.30 0.58 rotate -0 -90 0
$attachment "machinegun_1" "joint_torso" -69.00 -142.00 51.50 rotate -0 -90 0
$attachment "machinegun_2" "joint_torso" 66.00 -142.00 51.50 rotate -0 -90 0
$attachment "rocketpod_L" "joint_torso" 120.00 -30.00 140.50 rotate -0 -90 0
$attachment "rocketpod_R" "joint_torso" -120.00 -30.00 140.50 rotate -0 -90 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 120.00 70.00 rotate -0 -90 0
$scale 37
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "MadCat Upper.smd"
}
$BodyGroup "Torso"
{
	studio "MadCat Lower.smd"
}	


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\mad_Cat\"

$texturegroup "skinfamilies"
{
	{ "Madcat"      	 "Reac_Glow"}
	{ "Timberwolf" 	"Reac_Glow"}
	{ "Madcat_MP" 		"Reac_GlowMP"}
	{ "Timberwolf_MP" 		"Reac_GlowMP"}
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


$Animation "a_idle" "mad_anims\mad_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "mad_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "mad_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "mad_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "mad_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "mad_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "mad_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "mad_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "mad_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "mad_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "mad_anims\mad_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "mad_anims\mad_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "mad_anims\mad_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "mad_anims\mad_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "mad_anims\mad_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "mad_anims\mad_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "mad_anims\mad_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "mad_anims\mad_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "mad_anims\mad_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "mad_anims\mad_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "mad_anims\mad_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "mad_anims\mad_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "mad_anims\mad_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "mad_anims\mad_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "mad_anims\mad_rgimp.smd" {
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
	"mad_anims\mad_standrgimp.smd"
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
	"mad_anims\mad_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"mad_anims\mad_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"mad_anims\mad_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"mad_anims\mad_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"mad_anims\mad_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 24 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 56 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"mad_anims\mad_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 24 "MA2_Mech.Step" }
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

$origin 0 0 80 0

$sequence "jump" {
	"mad_anims\mad_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer	"aimlayer_generic"
	loop
	walkframe 145 LX LY
}
$origin 0 0 0 0

$sequence "land" {
//	"mad_anims\mad_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"mad_anims\mad_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"mad_anims\mad_standrgimp2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"mad_anims\mad_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 17 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"mad_anims\mad_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"mad_anims\mad_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"MadCat Upper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"MadCat Upper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "madCat_physics.smd" {

	$mass 65000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_torso" x limit -15.00 5.00 0.00
	$jointconstrain "joint_torso" y limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" z limit -180.00 180.00 0.00

	$jointconstrain "joint_ruarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rgun" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_luarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" z limit 0.00 0.00 0.00

	$jointconstrain "joint_luleg" x limit -50.00 30.00 0.00
	$jointconstrain "joint_luleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_luleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ldleg" x limit -50.00 50.00 0.00
	$jointconstrain "joint_ldleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_lankle" x limit -15.00 15.00 0.00
	$jointconstrain "joint_lankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lankle" z limit -10.00 35.00 0.00

	$jointconstrain "joint_ruleg" x limit -50.00 30.00 0.00
	$jointconstrain "joint_ruleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_ruleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rdleg" x limit -50.00 50.00 0.00
	$jointconstrain "joint_rdleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -15.00 15.00 0.00
	$jointconstrain "joint_rankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" z limit -10.00 35.00 0.00

	$jointconstrain "joint_lgun" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" z limit 0.00 0.00 0.00

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

$hbox 2 "joint_ROOT"	   -48.19  -84.90  -21.44    48.40   81.38   48.86
$hbox 2 "joint_torso"	  -169.08 -171.74    0.00   166.02  110.02  182.97
$hbox 2 "joint_torsoabove"	  -108.29    0.00    0.00   111.39   51.30   76.98
$hbox 5 "joint_ruarm"	   -79.03  -28.57 -108.49     1.54   22.74   20.35
$hbox 5 "joint_rgun"	   -37.28 -176.32  -56.45    32.20   23.21   30.71
$hbox 5 "joint_luarm"	    -7.79  -28.57 -108.51    73.34   22.74   20.35
$hbox 5 "joint_lgun"	   -38.38 -176.32  -56.45    31.10   23.21   30.71
$hbox 7 "joint_ruleg"	   -57.39  -32.12 -103.48    10.39   83.12   35.06
$hbox 7 "joint_rdleg"	   -43.96  -79.83 -117.91    36.97   55.46   40.19
$hbox 7 "joint_rankle"	   -42.18  -35.64  -58.94    38.03   53.64   12.35
$hbox 7 "joint_rotoe"	   -22.90  -49.81  -12.20    13.36    6.59   11.56
$hbox 7 "joint_ritoe"	   -15.03  -48.36  -12.22    21.24    8.06   11.53
$hbox 7 "joint_rbtoe"	   -18.87    0.00  -12.11    17.44   60.71   11.65
$hbox 6 "joint_luleg"	   -12.93  -32.13 -102.79    54.93   83.31   35.58
$hbox 6 "joint_ldleg"	   -40.74  -79.84 -116.90    39.85   55.61   40.95
$hbox 6 "joint_lankle"	   -41.84  -35.64  -58.45    38.37   53.64   12.85
$hbox 6 "joint_lotoe"	   -16.02  -47.28  -11.71    20.25    9.14   12.05
$hbox 6 "joint_litoe"	   -22.49  -48.85  -11.73    13.78    7.55   12.03
$hbox 6 "joint_lbtoe"	   -18.75    0.00  -11.64    17.56   60.78   12.11

// .qc block generated by HLMV ends.

