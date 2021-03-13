// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/blood_asp.mdl"
$scale 1.25
$attachment "machinegun_R1" "joint_rgun" 5.00 -147.00 -32.50 rotate -0 -90 0
$scale	1
$attachment "machinegun_R2" "joint_rgun" 6.25 -177.75 -65.63 rotate -0 -90 0
$scale 1.25
$attachment "machinegun_L1" "joint_lgun" -5.00 -147.00 -32.50 rotate -0 -90 0
$scale	1
$attachment "machinegun_L2" "joint_lgun" -5.00 -177.75 -65.63 rotate -0 -90 0
$scale 1.25
$attachment "missile_pod_L" "joint_torso" 80.00 -57.00 65.00 rotate -0 -90 0
$attachment "missile_pod_R" "joint_torso" -80.00 -57.00 65.00 rotate -0 -90 0
$attachment "Plasma_PPC_R" "joint_torso" -80.00 -47.00 140.00 rotate -0 -90 0
$attachment "Plasma_PPC_L" "joint_torso" 80.00 -47.00 140.00 rotate -0 -90 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 118.75 70.00 rotate -0 -90 0
$scale 50
//$origin 0 0 0 0

$BodyGroup "Body"
{
	studio "Blood Asp Torso.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\blood_asp\"

$texturegroup "skinfamilies"
{
	{ "Blood_Asp"	"Blood_Asp_arms"   	 "Reac_Glow"}
	{ "Blood_Asp_Staradder" 	"Blood_Asp_arms_Staradder"     	 "Reac_Glow"}
	{ "Blood_AspMP"   "Blood_Asp_armsMP"   	 "Reac_GlowMP"}
}

$weightlist weights_proportions {

"joint_ROOT" 0
"joint_ROOT" 1
"joint_ruleg" 1
"joint_luleg" 1

}

$weightlist weights_damage_arms {

"joint_torso" 0
"joint_ruarm" 1
"joint_luarm" 1

}

$weightlist weights_damage_upper {

"joint_ROOT" 0
"joint_torso" 1
"joint_hipabove" 1
"joint_ruarm" 1
"joint_luarm" 1
}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL


$Animation "a_idle" "basp_anims\basp_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "basp_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "basp_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "basp_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "basp_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "basp_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "basp_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "basp_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "basp_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "basp_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "basp_anims\basp_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "basp_anims\basp_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "basp_anims\basp_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "basp_anims\basp_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "basp_anims\basp_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "basp_anims\basp_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "basp_anims\basp_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "basp_anims\basp_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "basp_anims\basp_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "basp_anims\basp_lgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "basp_anims\basp_lgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "basp_anims\basp_lgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "basp_anims\basp_lgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "basp_anims\basp_lgimp.smd" {
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
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 31 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"basp_anims\basp_standrgimppose.smd"
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
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 31 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"basp_anims\basp_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"basp_anims\basp_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"basp_anims\basp_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"basp_anims\basp_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"basp_anims\basp_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 20 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 46 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"basp_anims\basp_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 20 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 46 "MA2_Mech.Step" }
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
	"basp_anims\basp_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer	"aimlayer_generic"
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"basp_anims\basp_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"basp_anims\basp_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"basp_anims\basp_standrgimppose2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"basp_anims\basp_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"basp_anims\basp_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"basp_anims\basp_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Blood Asp Torso.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Blood Asp Torso.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "bloodasp_physics.smd" {

	$mass 90000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_luleg" x limit -55.00 35.00 0.00
	$jointconstrain "joint_luleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_luleg" z limit -5.00 5.00 0.00

	$jointconstrain "joint_ldleg" x limit -30.00 40.00 0.00
	$jointconstrain "joint_ldleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ruleg" x limit -55.00 35.00 0.00
	$jointconstrain "joint_ruleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_ruleg" z limit -55.00 32.00 0.00

	$jointconstrain "joint_rdleg" x limit -30.00 40.00 0.00
	$jointconstrain "joint_rdleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" z limit -85.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -60.00 20.00 0.00
	$jointconstrain "joint_rankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" z limit 0.00 0.00 0.00

	$jointconstrain "joint_torso" x limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" y limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" z limit -180.00 180.00 0.00

	$jointconstrain "joint_ruarm" x limit -45.00 40.00 0.00
	$jointconstrain "joint_ruarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" z limit 0.00 0.00 0.00

	$jointconstrain "joint_luarm" x limit -44.00 40.00 0.00
	$jointconstrain "joint_luarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" z limit -88.00 48.00 0.00

	$jointconstrain "joint_lgun" x limit -20.00 30.00 0.00
	$jointconstrain "joint_lgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rgun" x limit -20.00 30.00 0.00
	$jointconstrain "joint_rgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_lankle" x limit -60.00 20.00 0.00
	$jointconstrain "joint_lankle" y limit -19.00 19.00 0.00
	$jointconstrain "joint_lankle" z limit -10.00 35.00 0.00

	$jointcollide joint_rgun joint_ruleg
	$jointcollide joint_rgun joint_luleg
	$jointcollide joint_lgun joint_ruleg
	$jointcollide joint_lgun joint_luleg
	$jointcollide joint_rankle joint_ldleg
	$jointcollide joint_lankle joint_rdleg
	$jointcollide joint_lankle joint_rankle
	$jointcollide joint_rdleg joint_ldleg
	$jointcollide joint_ruleg joint_luleg
	$jointcollide joint_rgun joint_torso
	$jointcollide joint_lgun joint_torso
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

$hbox 2 "joint_ROOT"	   -43.75  -45.59  -35.27    43.75   52.24   34.45
$hbox 3 "joint_torso"	   -99.31  -94.69   -7.26    99.34   98.18  152.81
$hbox 3 "joint_torsoabove"	  -102.81   -2.63    0.00   102.81    0.00   63.35
$hbox 4 "joint_luarm"	    -9.85  -27.35  -51.57    71.69   32.76   37.37
$hbox 4 "joint_lgun"	   -22.15 -127.63  -63.79    18.07   52.08    4.67
$hbox 5 "joint_ruarm"	   -71.14  -27.35  -51.57    10.40   32.76   37.37
$hbox 5 "joint_rgun"	   -17.52 -127.63  -63.79    22.70   52.08    4.67
$hbox 7 "joint_ruleg"	   -53.76  -27.19  -77.08     7.05   84.87   19.01
$hbox 7 "joint_rmleg"	   -30.37  -31.53  -78.58    21.34   25.18   17.71
$hbox 7 "joint_rdleg"	   -25.26  -69.62  -47.53    15.61   16.41   13.02
$hbox 7 "joint_rankle"	   -13.12  -37.25  -27.35    11.01   18.11    0.00
$hbox 7 "joint_rftoe"	   -45.52  -41.71  -20.49    43.21   11.24    2.69
$hbox 7 "joint_rbtoe"	   -45.52   -9.09  -20.54    43.21   43.83    2.67
$hbox 6 "joint_luleg"	    -6.81  -27.19  -77.08    54.00   84.87   19.01
$hbox 6 "joint_lmleg"	   -21.10  -31.53  -78.58    30.61   25.18   17.71
$hbox 6 "joint_ldleg"	   -15.37  -69.62  -47.53    25.50   16.41   13.02
$hbox 6 "joint_lankle"	   -10.77  -37.25  -27.35    13.36   18.11    0.00
$hbox 6 "joint_lftoe"	   -42.97  -41.71  -20.49    45.76   11.24    2.69
$hbox 6 "joint_lbtoe"	   -42.97   -9.09  -20.54    45.76   43.83    2.67

// .qc block generated by HLMV ends.


