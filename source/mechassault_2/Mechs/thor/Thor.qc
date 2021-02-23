// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/thor.mdl"
$scale	1.1
$attachment "pulse_laser_R" "joint_rgun" -4.00 -166.00 3.50 rotate -0 -90 0
$attachment "pulse_laser_L" "joint_lgun" 26.00 -130.00 -6.50 rotate -0 -90 0
$attachment "machinegun_1" "joint_torso" -56.00 -62.00 28.50 rotate -0 -90 0
$attachment "machinegun_2" "joint_torso" 56.00 -62.00 28.50 rotate -0 -90 0
$attachment "rocketpod" "joint_missile" 0.00 -110.00 30.00 rotate -0 -90 0
$attachment "jumpjets_main" "joint_torso" -1.00 52.00 8.00 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 48.00 77.00 55.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -48.00 77.00 55.00 rotate 30 140 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 104.50 50.00 rotate -0 -90 0
$scale 35
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "Thor Body Lower.smd"
}
$BodyGroup "Torso"
{
	studio "Thor Body Upper.smd"
}	
$BodyGroup "JumpJets"
{
	studio "Jump Jets Mesh.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\thor\"

$texturegroup "skinfamilies"
{
	{ "Thor_Body"      	 "Thor_Arms"	"Reac_Glow"}
	{ "Summoner_Body"      	 "Summoner_Arms"	"Reac_Glow"}
	{ "Thor_Body_MP"      	 "Thor_Arms_MP"	"Reac_Glow_MP"}
	{ "Summoner_Body_MP"      	 "Summoner_Arms_MP"	"Reac_Glow_MP"}
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


$Animation "a_idle" "thr_anims\thr_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "thr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "thr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "thr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "thr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "thr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "thr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "thr_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "thr_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "thr_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "thr_anims\thr_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "thr_anims\thr_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "thr_anims\thr_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "thr_anims\thr_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "thr_anims\thr_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "thr_anims\thr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "thr_anims\thr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "thr_anims\thr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "thr_anims\thr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "thr_anims\thr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "thr_anims\thr_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "thr_anims\thr_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "thr_anims\thr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "thr_anims\thr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "thr_anims\thr_rgimp.smd" {
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
	"thr_anims\thr_standrgimppose.smd"
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
	{ event AE_CL_PLAYSOUND 3 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 14 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"thr_anims\thr_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"thr_anims\thr_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"thr_anims\thr_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"thr_anims\thr_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"thr_anims\thr_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 47 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"thr_anims\thr_getup.smd"
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
	"thr_anims\thr_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"thr_anims\thr_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"thr_anims\thr_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"thr_anims\thr_standrgimp.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"thr_anims\thr_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 23 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 32 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"thr_anims\thr_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 11 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 25 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"thr_anims\thr_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Thor Body Upper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Thor Body Upper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "thor_physics.smd" {

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


$hboxset "default"

$hbox 3 "joint_ROOT"	   -41.56  -77.58  -22.75    41.71   24.22   53.18
$hbox 2 "joint_torso"	   -90.56  -79.77    0.00    90.33   81.65  151.71
$hbox 2 "joint_torsoabove"	   -88.11    0.00    0.00    88.14   32.40  127.69
$hbox 5 "joint_ruarm"	   -69.91  -40.18  -90.10    19.16    5.72   28.78
$hbox 5 "joint_rgun"	   -36.44 -163.61  -45.03    26.56    6.61   34.00
$hbox 4 "joint_luarm"	     0.00  -39.90  -73.45    47.35    5.67   28.72
$hbox 4 "joint_lgun"	     0.00 -127.61  -31.26    53.16   14.33   18.40
$hbox 6 "joint_luleg"	    -7.03  -64.14 -127.33    74.40   23.31   15.04
$hbox 6 "joint_ldleg"	   -39.39  -48.63 -110.75    47.56   61.51   21.10
$hbox 6 "joint_lankle"	   -13.35  -27.91  -43.52    17.48   35.03   18.42
$hbox 6 "joint_lbtoe"	   -34.44  -16.40  -20.38    36.53   28.17   17.97
$hbox 6 "joint_lftoe"	   -35.46  -67.37  -23.57    35.71    0.00   17.50
$hbox 7 "joint_ruleg"	   -73.64  -64.06 -127.51     7.79   23.38   14.86
$hbox 7 "joint_rdleg"	   -46.65  -48.82 -110.32    40.29   61.31   21.54
$hbox 7 "joint_rankle"	   -16.54  -27.91  -43.52    14.29   35.04   18.41
$hbox 7 "joint_rbtoe"	   -36.94  -16.40  -20.43    34.04   28.17   17.93
$hbox 7 "joint_rftoe"	   -36.06  -67.42  -23.56    35.11    0.00   17.52
$hbox 2 "joint_missile"	   -31.09 -108.62   -2.44    33.74   18.40   63.15

// .qc block generated by HLMV ends.


