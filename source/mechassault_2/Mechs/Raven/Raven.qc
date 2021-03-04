// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/Raven.mdl"

$scale 1
$attachment "Autocannon" "joint_torso" -72.00 -55.00 37.50 rotate -0 -90 -90
$attachment "Pulse_Laser_R" "joint_torso" -69.00 -32.00 57.50 rotate -0 -90 -90
$attachment "Pulse_Laser_L" "joint_torso" 69.00 -24.00 38.50 rotate -0 -90 -90
$attachment "jumpjets_main" "joint_torso" -1.00 56.00 -7.00 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 33.00 70.00 23.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -30.00 70.00 23.00 rotate 30 140 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 85.00 20.00 rotate -0 -90 0
$scale 40
//$origin 0 0 -38 0

$BodyGroup "Legs"
{
	studio "Corvus Lower.smd"
}

$BodyGroup "Body"
{
	studio "Corvus Upper.smd"
}

$BodyGroup "Jumpjets"
{
	studio "Jump Jets.smd"
	blank
}	
	



$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\Raven\"

$texturegroup "skinfamilies"
{
	{ "Raven"    	  	 "Reac_Glow"}
	{ "Corvus" 	 "Reac_Glow"}
	{ "Corvus_MP" 	 "Reac_Glow_MP"}
	{ "Raven_MP" 	 "Reac_Glow_MP"}
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



$Animation "a_idle" "rvn_anims\rvn_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "rvn_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "rvn_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "rvn_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "rvn_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "rvn_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "rvn_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "rvn_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "rvn_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "rvn_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "rvn_anims\rvn_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "rvn_anims\rvn_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "rvn_anims\rvn_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "rvn_anims\rvn_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "rvn_anims\rvn_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "rvn_anims\rvn_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "rvn_anims\rvn_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "rvn_anims\rvn_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "rvn_anims\rvn_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "rvn_anims\rvn_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "rvn_anims\rvn_lgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "rvn_anims\rvn_lgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "rvn_anims\rvn_lgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "rvn_anims\rvn_lgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "rvn_anims\rvn_lgimp.smd" {
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
	{ event AE_CL_PLAYSOUND 9 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 20 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"rvn_anims\rvn_lgimp.smd"
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
	{ event AE_CL_PLAYSOUND 9 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 20 "MA2_Mech.Step" }
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
	{ event AE_CL_PLAYSOUND 11 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"rvn_anims\rvn_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"rvn_anims\rvn_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"rvn_anims\rvn_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"rvn_anims\rvn_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"rvn_anims\rvn_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 27 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 41 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"rvn_anims\rvn_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 27 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 41 "MA2_Mech.Step" }
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
	"rvn_anims\rvn_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"rvn_anims\rvn_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"rvn_anims\rvn_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"rvn_anims\rvn_lgimp2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"rvn_anims\rvn_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 18 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 32 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"rvn_anims\rvn_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 11 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 24 "MA2_Mech.Step" }
}
//$origin 0 0 -155 0

$sequence "power_down_pose" {
	"rvn_anims\rvn_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
//$origin 0 0 0 0


$Sequence "reference" {
	"Corvus Upper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Corvus Upper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "raven_physics.smd" {

	$mass 25000.0
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

$hbox 2 "joint_ROOT"	   -25.48  -40.70  -26.19    39.66   23.90   32.29
$hbox 2 "joint_torso"	   -84.38 -117.02   -7.43    84.36   88.60   75.29
$hbox 7 "joint_ruleg"	   -42.01  -26.57  -39.68     9.10   73.46   20.27
$hbox 7 "joint_rdleg"	   -14.69  -85.01 -112.17    23.37   31.06   19.78
$hbox 7 "joint_rankle"	    -9.59  -24.41  -32.25    24.96   14.74    4.98
$hbox 7 "joint_rbtoe"	    -3.99   -3.31  -11.66    18.97   28.52    5.15
$hbox 7 "joint_rftoe"	   -14.97  -32.61  -11.73    29.93    0.00    5.09
$hbox 6 "joint_luleg"	     0.00  -26.57  -39.45    56.49   73.47   20.49
$hbox 6 "joint_ldleg"	    -8.49  -85.01 -111.94    29.58   31.06   20.01
$hbox 6 "joint_lankle"	   -10.64  -24.41  -32.25    23.91   14.74    4.97
$hbox 6 "joint_lbtoe"	    -4.36   -3.31  -11.66    18.60   28.52    5.16
$hbox 6 "joint_lftoe"	   -15.47  -32.61  -11.73    29.43    0.00    5.09

// .qc block generated by HLMV ends.


