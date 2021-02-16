// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/uller.mdl"
$attachment "pulse_laser_R" "joint_rgun" 7.00 -83.00 -31.00 rotate -0 -90 0
$attachment "pulse_laser_L" "joint_lgun" -9.00 -83.00 -31.00 rotate -0 -90 0
$attachment "rocketpod_L" "joint_torso" 34.00 -10.00 70.50 rotate -0 -90 0
$attachment "rocketpod_R" "joint_torso" -34.00 -10.00 70.50 rotate -0 -90 0
$attachment "jumpjets_main" "joint_torso" -0.00 42.00 5.00 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 21.00 52.00 24.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -21.00 52.00 24.00 rotate 30 140 0
$scale 42
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "Uller Body Lower.smd"
}
$BodyGroup "Torso"
{
	studio "Uller Body Upper .smd"
}	
$BodyGroup "JumpJets"
{
	studio "Jump Jets.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\uller\"

$texturegroup "skinfamilies"
{
	{ "uller"      	"Reac_Glow"}
	{ "kitfox"      "Reac_Glow"}
	{ "uller_MP"   	"Reac_Glow_MP"}
	{ "kitfox_MP" 	"Reac_Glow_MP"}
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

$origin 0 0 2.5 0
$Animation "a_idle" "ulr_anims\ulr_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "ulr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "ulr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "ulr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "ulr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "ulr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "ulr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "ulr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "ulr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "ulr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "ulr_anims\ulr_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "ulr_anims\ulr_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "ulr_anims\ulr_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "ulr_anims\ulr_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "ulr_anims\ulr_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$origin 0 0 5 0
$Animation "a_walk_N" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 45

$Animation "a_walk_NW" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 -45

$Animation "a_walk_NE" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 90
$Animation "a_walk_W" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 5 -90
$Animation "a_walk_E" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 5 180
$Animation "a_walk_S" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 5 135
$Animation "a_walk_SW" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 5 -135
$Animation "a_walk_SE" "ulr_anims\ulr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 5 0
$Animation "a_run_N" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 45
$Animation "a_run_NW" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 -45
$Animation "a_run_NE" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 90
$Animation "a_run_W" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 5 -90
$Animation "a_run_E" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 5 180
$Animation "a_run_S" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 5 135
$Animation "a_run_SW" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 5 -135
$Animation "a_run_SE" "ulr_anims\ulr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 5 0
$Animation "a_walk_limp_N" "ulr_anims\ulr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 45
$Animation "a_walk_limp_NW" "ulr_anims\ulr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 -45
$Animation "a_walk_limp_NE" "ulr_anims\ulr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 5 90
$Animation "a_walk_limp_W" "ulr_anims\ulr_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 5 -90
$Animation "a_walk_limp_E" "ulr_anims\ulr_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 5 180
$Animation "a_walk_limp_S" "ulr_anims\ulr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 5 135
$Animation "a_walk_limp_SW" "ulr_anims\ulr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 5 -135
$Animation "a_walk_limp_SE" "ulr_anims\ulr_rgimp.smd" {
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
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"ulr_anims\ulr_standrgimppose2.smd"
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
	{ event AE_CL_PLAYSOUND 1 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 13 "MA2_Mech.Step" }
}

$origin 0 0 -120 0

$sequence "jump" {
	"ulr_anims\ulr_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$Sequence "fall_forward" {
	"ulr_anims\ulr_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"ulr_anims\ulr_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"ulr_anims\ulr_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"ulr_anims\ulr_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"ulr_anims\ulr_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 33 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"ulr_anims\ulr_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 32 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 46 "MA2_Mech.Step" }
}

$origin 0 0 0 0

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




$sequence "land" {
//	"ulr_anims\ulr_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 145 LX LY
}
$origin 0 0 2.5 0
$sequence "idle" {
	"ulr_anims\ulr_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"ulr_anims\ulr_standrgimp.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$origin 0 0 -125 0

$sequence "power_up" {
	"ulr_anims\ulr_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 16 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 30 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"ulr_anims\ulr_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"ulr_anims\ulr_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$origin 0 0 0 0

$Sequence "reference" {
	"Uller Body Upper .smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Uller Body Upper .smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "uller_physics.smd" {

	$mass 25000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_ruleg" x limit -20.00 50.00 0.00
	$jointconstrain "joint_ruleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ruleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rdleg" x limit 0.00 45.00 0.00
	$jointconstrain "joint_rdleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_luleg" x limit -20.00 50.00 0.00
	$jointconstrain "joint_luleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_luleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ldleg" x limit 0.00 45.00 0.00
	$jointconstrain "joint_ldleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_lankle" x limit -20.00 20.00 0.00
	$jointconstrain "joint_lankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lankle" z limit 0.00 0.00 0.00

	$jointconstrain "joint_torso" x limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" y limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" z limit -180.00 180.00 0.00

	$jointconstrain "joint_rgun" x limit -20.00 20.00 0.00
	$jointconstrain "joint_rgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_missile" x limit -20.00 10.00 0.00
	$jointconstrain "joint_missile" y limit 0.00 0.00 0.00
	$jointconstrain "joint_missile" z limit 0.00 0.00 0.00

	$jointconstrain "joint_lgun" x limit -20.00 20.00 0.00
	$jointconstrain "joint_lgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -20.00 20.00 0.00
	$jointconstrain "joint_rankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" z limit 0.00 0.00 0.00

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


// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"
$jointsurfaceprop "ROOT"	 "metalvehicle"


$hboxset "default"

$hbox 2 "joint_ROOT"	   -35.65  -45.42  -17.51    35.65   15.24   29.73
$hbox 3 "joint_torso"	   -67.49  -61.33    0.00    67.49   53.77   90.45
$hbox 3 "joint_torsoabove"	   -74.96    0.00    0.00    74.96    5.01   26.02
$hbox 4 "joint_luarm"	    -7.62  -13.70  -25.48    13.56   11.61   15.79
$hbox 4 "joint_lgun"	   -15.38  -80.79  -39.04    10.41   16.91    2.34
$hbox 5 "joint_ruarm"	   -13.34  -13.70  -25.48     7.85   11.61   15.79
$hbox 5 "joint_rgun"	   -11.92  -80.79  -39.04    13.87   16.91    2.34
$hbox 7 "joint_ruleg"	   -34.12  -23.66  -56.90     0.00   43.05   21.05
$hbox 7 "joint_rdleg"	    -9.74  -64.81  -53.67    29.77    5.77   13.69
$hbox 7 "joint_rankle"	   -22.98  -20.59  -27.56    14.25   23.85   10.36
$hbox 7 "joint_ritoe"	    -2.07   -9.13  -10.45    25.78   11.47    7.20
$hbox 7 "joint_rotoe"	   -10.38   -7.35  -10.69    10.21   32.47    6.97
$hbox 7 "joint_rftoe"	    -7.00  -34.51  -11.09    13.60    5.31    6.57
$hbox 6 "joint_luleg"	     0.00  -23.65  -56.88    33.98   43.05   21.07
$hbox 6 "joint_ldleg"	   -30.21  -64.80  -53.72     9.30    5.77   13.62
$hbox 6 "joint_lankle"	   -14.86  -20.58  -27.57    22.37   23.86   10.35
$hbox 6 "joint_litoe"	   -28.37   -9.11  -10.48     0.00   11.49    7.17
$hbox 6 "joint_lotoe"	    -9.99   -7.07  -10.69    10.61   32.75    6.96
$hbox 6 "joint_lftoe"	   -13.68  -34.54  -10.45     6.92    5.28    7.20

// .qc block generated by HLMV ends.

