// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/loki.mdl"

$scale 1.25
$attachment "pulse_laser_R" "joint_rgun" -2.50 -130.00 4.00 rotate -0 -90 0
$attachment "pulse_laser_L" "joint_lgun" 4.50 -130.00 4.00 rotate -0 -90 0
$attachment "machinegun_1" "joint_rgun" -2.50 -125.00 -12.00 rotate -0 -90 0
$attachment "machinegun_2" "joint_lgun" 4.50 -125.00 -12.00 rotate -0 -90 0
$attachment "rocketpod" "joint_torso" -48.50 -7.00 144.00 rotate -0 -90 0
$attachment "jumpjets_main" "joint_torso" -1.10 60.20 7.80 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 40.80 78.70 46.50 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -40.80 78.70 46.50 rotate 30 140 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$scale	1
$attachment "defense_system" "joint_torso" 59.00 12.00 170.00 rotate -90 -0 0
$attachment "battlearmor_attach" "joint_torso" 0.00 120.00 50.00 rotate -0 -90 0
$scale 43.5
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "loki Body Lower.smd"
}
$BodyGroup "Torso"
{
	studio "loki Body Upper.smd"
}	
$BodyGroup "JumpJets"
{
	studio "Jump Jets.smd"
	blank
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\loki\"

$texturegroup "skinfamilies"
{
	{ "loki_Body"     		"Reac_Glow"		"Visor"}
	{ "hellbringer_Body"	"Reac_Glow"		"Visor"}
	{ "loki_Body_MP" 		"Reac_Glow_MP"	"VisorMP"}
	{ "hellbringer_Body_MP"	"Reac_Glow_MP"	"VisorMP"}
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


$Animation "a_idle" "loki_anims\lok_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "loki_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "loki_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "loki_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "loki_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "loki_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "loki_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "loki_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "loki_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "loki_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "loki_anims\lok_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "loki_anims\lok_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "loki_anims\lok_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "loki_anims\lok_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "loki_anims\lok_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "loki_anims\lok_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "loki_anims\lok_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "loki_anims\lok_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "loki_anims\lok_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "loki_anims\lok_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "loki_anims\lok_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "loki_anims\lok_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "loki_anims\lok_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "loki_anims\lok_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "loki_anims\lok_rgimp.smd" {
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
	{ event AE_CL_PLAYSOUND 16 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"loki_anims\lok_standrgimp.smd"
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
	{ event AE_CL_PLAYSOUND 11 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 28 "MA2_Mech.Step" }
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
	{ event AE_CL_PLAYSOUND 14 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"loki_anims\lok_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"loki_anims\lok_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"loki_anims\lok_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"loki_anims\lok_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"loki_anims\lok_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 47 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"loki_anims\lok_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 47 "MA2_Mech.Step" }
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
	"loki_anims\lok_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"loki_anims\lok_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"loki_anims\lok_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"loki_anims\lok_standrgimp2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"loki_anims\lok_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 23 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 32 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"loki_anims\lok_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 10 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 25 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"loki_anims\lok_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"loki Body Upper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"loki Body Upper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "loki_physics.smd" {

	$mass 65000.0
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

$surfaceprop "metalvehicle"


// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 2 "joint_ROOT"	   -34.13  -57.31  -22.19    36.97   29.62   42.65
$hbox 2 "joint_torso"	   -92.65  -74.82    0.00    92.65   84.19  159.81
$hbox 2 "joint_torsoabove"	   -76.14    0.00    0.00    76.17   12.25   65.35
$hbox 5 "joint_ruarm"	   -59.91  -22.27  -75.78    20.76   16.86   26.52
$hbox 5 "joint_rgun"	   -31.31 -129.37  -39.94    23.08   17.62   28.30
$hbox 4 "joint_luarm"	   -18.95  -22.27  -75.78    61.72   16.86   26.52
$hbox 4 "joint_lgun"	   -21.24 -129.37  -39.94    33.16   17.62   28.31
$hbox 6 "joint_luleg"	    -4.79  -45.59 -107.82    64.74   29.11   13.72
$hbox 6 "joint_ldleg"	   -32.79  -33.28  -99.29    41.44   60.76   13.29
$hbox 6 "joint_lankle"	   -10.64  -14.90  -38.19    15.68   38.85   14.70
$hbox 6 "joint_lbtoe"	   -28.64   -5.38  -18.03    31.96   32.67   14.73
$hbox 6 "joint_lftoe"	   -29.52  -48.48  -20.78    31.25    8.81   14.30
$hbox 7 "joint_ruleg"	   -61.38  -45.48 -108.10     8.15   29.23   13.44
$hbox 7 "joint_rdleg"	   -37.96  -33.49  -99.05    36.27   60.55   13.53
$hbox 7 "joint_rankle"	   -12.17  -14.89  -38.19    14.16   38.86   14.69
$hbox 7 "joint_rbtoe"	   -29.60   -5.38  -18.06    31.01   32.67   14.69
$hbox 7 "joint_rftoe"	   -28.84  -48.52  -20.77    31.94    8.77   14.31

// .qc block generated by HLMV ends.

