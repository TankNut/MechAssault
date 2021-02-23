// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/Catapult.mdl"
$scale 1.05
$attachment "Pulse_Laser_1" "joint_torso" -46.50 -165.00 -27.00 rotate -0 -90 0
$attachment "Pulse_Laser_2" "joint_torso" -12.50 -162.00 5.00 rotate -0 -90 0
$attachment "Pulse_Laser_3" "joint_torso" 12.50 -162.00 5.00 rotate -0 -90 0
$attachment "Pulse_Laser_4" "joint_torso" 46.50 -165.00 -27.00 rotate -0 -90 
$scale 1.1
$attachment "Missiles_1" "joint_ruarm" -35.00 15.00 65.00 rotate -15 -90 0
$attachment "Missiles_2" "joint_luarm" 35.00 15.00 65.00 rotate -15 -90 0
$scale	1.05
$attachment "jumpjets_main" "joint_torso" 1.00 111.00 -12.00 rotate 70 90 0
$attachment "jumpjets_L" "joint_torso" 45.00 120.00 28.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -42.50 120.00 28.00 rotate 30 140 0
$scale	1
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 144.50 40.00 rotate -0 -90 0
$scale 42
//$origin 0 0 -38 0

$BodyGroup "Legs"
{
	studio "Catapult Lower.smd"
}

$BodyGroup "Body"
{
	studio "Catapult Upper.smd"
}

$BodyGroup "Jumpjets"
{
	studio "Jump Jets.smd"
}	
	



$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\Catapult\"

$texturegroup "skinfamilies"
{
	{ "Catapult_Body"    "Catapult_Pods"	  	"Reac_Glow"}
	{ "Bowman_Body" 	 "Bowman_Pods"			"Reac_Glow"}
	{ "Catapult_Body_MP" "Catapult_Pods_MP"	 	"Reac_Glow_MP"}
//	{ "Bowman_Body_MP" 	 "Bowman_Pods_MP"		"Reac_Glow_MP"}
}

// RAGDOLL


$weightlist weights_proportions {

"joint_ROOT" 0
"joint_hipbelow" 1
"joint_ruleg" 1
"joint_luleg" 1

}


$weightlist weights_damage_upper {

"joint_ROOT" 0
"joint_torso" 1
"joint_hipabove" 1
}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL



$Animation "a_idle" "cat_anims\cat_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "cat_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "cat_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "cat_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "cat_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "cat_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "cat_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "cat_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "cat_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "cat_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "cat_anims\cat_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "cat_anims\cat_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "cat_anims\cat_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "cat_anims\cat_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "cat_anims\cat_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "cat_anims\cat_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "cat_anims\cat_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "cat_anims\cat_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "cat_anims\cat_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "cat_anims\cat_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "cat_anims\cat_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "cat_anims\cat_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "cat_anims\cat_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "cat_anims\cat_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "cat_anims\cat_rgimp.smd" {
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
	{ event AE_CL_PLAYSOUND 16 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 32 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"cat_anims\cat_rgimppose4.smd"
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
	{ event AE_CL_PLAYSOUND 1 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
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
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"cat_anims\cat_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"cat_anims\cat_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"cat_anims\cat_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"cat_anims\cat_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"cat_anims\cat_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 27 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 42 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"cat_anims\cat_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 27 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 42 "MA2_Mech.Step" }
}

$sequence "hit_back" {
	"a_hit_back"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
//	weightlist	"weights_damage_upper"
}

$sequence "hit_front" {
	"a_hit_front"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 145 LX LY
//	weightlist	"weights_damage_upper"
}


$sequence "jump" {
	"cat_anims\cat_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"cat_anims\cat_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 145 LX LY
}

$sequence "idle" {
	"cat_anims\cat_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"cat_anims\cat_rgimppose2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"cat_anims\cat_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"cat_anims\cat_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}
//$origin 0 0 -155 0

$sequence "power_down_pose" {
	"cat_anims\cat_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
//$origin 0 0 0 0


$Sequence "reference" {
	"Catapult Upper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Catapult Upper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "catapult_physics.smd" {

	$mass 60000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_ruleg" x limit -12.00 12.00 0.00
	$jointconstrain "joint_ruleg" y limit -40.00 50.00 0.00
	$jointconstrain "joint_ruleg" z limit -5.00 3.00 0.00

	$jointconstrain "joint_rdleg" x limit -55.00 30.00 0.00
	$jointconstrain "joint_rdleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_luleg" x limit -12.00 12.00 0.00
	$jointconstrain "joint_luleg" y limit -40.00 50.00 0.00
	$jointconstrain "joint_luleg" z limit -5.00 5.00 0.00

	$jointconstrain "joint_ldleg" x limit -55.00 30.00 0.00
	$jointconstrain "joint_ldleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_lankle" x limit -25.00 30.00 0.00
	$jointconstrain "joint_lankle" y limit -19.00 19.00 0.00
	$jointconstrain "joint_lankle" z limit -10.00 35.00 0.00

	$jointconstrain "joint_torso" x limit -15.00 5.00 0.00
	$jointconstrain "joint_torso" y limit -180.00 180.00 0.00
	$jointconstrain "joint_torso" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -25.00 30.00 0.00
	$jointconstrain "joint_rankle" y limit -25.00 6.00 0.00
	$jointconstrain "joint_rankle" z limit -10.00 35.00 0.00


	$jointcollide joint_rankle joint_ldleg
	$jointcollide joint_lankle joint_rdleg
	$jointcollide joint_lankle joint_rankle
	$jointcollide joint_rdleg joint_ldleg
	$jointcollide joint_rujoint_lulegeg L
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

// .qc block generated by HLMV begins.

$scale 0.9
// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 2 "joint_ROOT"	   -20.32  -74.51  -35.11    20.32   67.21   40.45
$hbox 2 "joint_torso"	   -84.53 -160.58  -56.27    86.07  127.52  105.66
$hbox 2 "joint_torsoabove"	   -60.00   -2.04    0.00    60.00    0.00   68.12
$hbox 5 "joint_ruarm"	  -103.81    0.00  -10.80    37.07  138.62  113.10
$hbox 4 "joint_luarm"	   -36.36    0.00  -10.80   106.36  138.62  113.10
$hbox 7 "joint_ruleg"	   -63.36  -43.09  -73.22    13.64   78.67   48.42
$hbox 7 "joint_rmleg"	   -47.81  -88.31  -91.89     8.28   45.65   32.93
$hbox 7 "joint_rdleg"	   -41.96  -65.78  -40.00    37.37   20.61   34.14
$hbox 7 "joint_rankle"	   -33.19  -29.32  -37.71    32.98   28.56   20.63
$hbox 7 "joint_rbtoe"	   -20.76   -0.61   -5.78    20.24   70.78   19.39
$hbox 7 "joint_ritoe"	   -19.41  -64.81   -5.80    21.51    8.27   19.38
$hbox 7 "joint_rotoe"	   -22.19  -69.00   -5.80    18.73    4.07   19.38
$hbox 6 "joint_luleg"	   -14.12  -43.14  -73.17    62.90   78.70   48.38
$hbox 6 "joint_lmleg"	    -6.56  -88.22  -92.01    49.46   45.69   32.91
$hbox 6 "joint_ldleg"	   -35.21  -65.72  -40.00    44.12   20.67   34.03
$hbox 6 "joint_lankle"	   -31.18  -29.31  -37.69    34.99   28.56   20.65
$hbox 6 "joint_lbtoe"	   -18.31   -0.35   -5.76    22.68   71.04   19.41
$hbox 6 "joint_litoe"	   -20.23  -63.53   -5.78    20.69    9.54   19.40
$hbox 6 "joint_lotoe"	   -19.22  -69.11   -5.78    21.70    3.97   19.40

// .qc block generated by HLMV ends.

