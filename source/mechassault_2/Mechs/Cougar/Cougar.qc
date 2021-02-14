// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/cougar.mdl"
$attachment "pulse_laser_R" "joint_rgunlower" 15.00 -18.00 73.50 rotate -90 -0 0
$attachment "pulse_laser_L" "joint_lgunlower" -22.00 -18.00 73.50 rotate -90 -0 0
$attachment "autocannon_R" "joint_rgunlower" 9.00 -44.00 105.50 rotate -90 0 0
$attachment "autocannon_L" "joint_lgunlower" -14.00 -44.00 105.50 rotate -90 -0 0
$attachment "missile_pod_R" "joint_torso" 80.00 -30.00 38.00 rotate 0 -90 0
$attachment "missile_pod_L" "joint_torso" -80.00 -30.00 38.00 rotate 0 -90 0
$attachment "defense_system" "joint_torso" -2.00 12.00 74.00 rotate -90 -0 0
$attachment "jumpjets_main" "joint_torso" -3.00 67.00 -6.00 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 24.00 80.00 16.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -30.00 80.00 16.00 rotate 30 140 0
$scale 50
$origin 0 0 -150 0

$BodyGroup "Legs"
{
	studio "Cougar Hips.smd"
}
$BodyGroup "Torso"
{
	studio "Cougar HQD Torso.smd"
}	

$BodyGroup "Defenses"
{
	studio "Cougar Vent L.smd"
}

$BodyGroup "Sensor"
{
	studio "Cougar Sensor.smd"
}		

$BodyGroup "Jumpjets"
{
	studio "Cougar Jump Jets.smd"
}	

$BodyGroup "Pilot"
{
	blank
	studio "Mech Piloting Chair.smd"
}	



$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\cougar\"

$texturegroup "skinfamilies"
{
	{ "Cougar"      	 "Reac_Glow"}
	{ "Puma" 	 "Reac_Glow"}
	{ "Cougar_MP" "Reac_Glow_2"}
	{ "Puma_MP" "Reac_Glow_2"}
}

$weightlist weights_proportions {

"joint_ROOT" 0
"joint_hipbelow" 1
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



$Animation "a_idle" "cougar_anims\cgr_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "cougar_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "cougar_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "cougar_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "cougar_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "cougar_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "cougar_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "cougar_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "cougar_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "cougar_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "cougar_anims\cgr_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "cougar_anims\cgr_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "cougar_anims\cgr_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "cougar_anims\cgr_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "cougar_anims\cgr_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 45

$Animation "a_walk_NW" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 -45

$Animation "a_walk_NE" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 90
$Animation "a_walk_W" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 -150 -90
$Animation "a_walk_E" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 -150 180
$Animation "a_walk_S" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -150 135
$Animation "a_walk_SW" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -150 -135
$Animation "a_walk_SE" "cougar_anims\cgr_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 -150 0
$Animation "a_run_N" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 45
$Animation "a_run_NW" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 -45
$Animation "a_run_NE" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 90
$Animation "a_run_W" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 -150 -90
$Animation "a_run_E" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 -150 180
$Animation "a_run_S" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -150 135
$Animation "a_run_SW" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -150 -135
$Animation "a_run_SE" "cougar_anims\cgr_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 -150 0
$Animation "a_walk_limp_N" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 45
$Animation "a_walk_limp_NW" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 -45
$Animation "a_walk_limp_NE" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -150 90
$Animation "a_walk_limp_W" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 -150 -90
$Animation "a_walk_limp_E" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 -150 180
$Animation "a_walk_limp_S" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -150 135
$Animation "a_walk_limp_SW" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -150 -135
$Animation "a_walk_limp_SE" "cougar_anims\cgr_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 -150 0

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
	snap
	fadein 0.3
	fadeout 0.5
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 14 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 28 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"cougar_anims\cgr_standrgimppose2.smd"
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
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
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
	{ event AE_CL_PLAYSOUND 1 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 13 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"cougar_anims\cgr_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"cougar_anims\cgr_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"cougar_anims\cgr_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"cougar_anims\cgr_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"cougar_anims\cgr_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 35 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"cougar_anims\cgr_getupright.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 35 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
}

$sequence "hit_back" {
	"a_hit_back"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 180 LX LY
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
	"cougar_anims\cgr_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"cougar_anims\cgr_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 145 LX LY
}

$sequence "idle" {
	"cougar_anims\cgr_base2.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"cougar_anims\cgr_standrgimppose.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"cougar_anims\cgr_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"cougar_anims\cgr_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}
$origin 0 0 -150 0

$sequence "power_down_pose" {
	"cougar_anims\cgr_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
$origin 0 0 -150 0



$Sequence "reference" {
	"cougar_anims\cgr_base.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"cougar_anims\cgr_base.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "cougar_physics.smd" {

	$mass 50000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_hipbelow"
//	$jointmerge "joint_hipbelow" "B"
//	$jointmerge "joint_hipbelow" "joint_torso"

	$jointconstrain "joint_torso" x limit -15.00 5.00 0.00
	$jointconstrain "joint_torso" y limit -180.00 180.00 0.00
	$jointconstrain "joint_torso" z limit 0.00 0.00 0.00

	$jointconstrain "joint_luarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" z limit -88.00 48.00 0.00

	$jointconstrain "joint_lgunabove" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lgunabove" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lgunabove" z limit -150.00 75.00 0.00

	$jointconstrain "joint_ruarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" z limit -88.00 48.00 0.00

	$jointconstrain "joint_ruleg" x limit -12.00 12.00 0.00
	$jointconstrain "joint_ruleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_ruleg" z limit -55.00 32.00 0.00

	$jointconstrain "joint_rdleg" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" z limit -85.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" y limit -25.00 6.00 0.00
	$jointconstrain "joint_rankle" z limit -10.00 35.00 0.00

	$jointconstrain "joint_luleg" x limit -12.00 12.00 0.00
	$jointconstrain "joint_luleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_luleg" z limit -55.00 32.00 0.00

	$jointconstrain "joint_ldleg" x limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" z limit -85.00 0.00 0.00

	$jointconstrain "joint_lankle" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lankle" y limit -19.00 19.00 0.00
	$jointconstrain "joint_lankle" z limit -10.00 35.00 0.00

	$jointconstrain "joint_rgunabove" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rgunabove" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rgunabove" z limit -150.00 75.00 0.00
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
		"rootname"		"joint_hipbelow"
		"totalmass"		"90.000000"
//		"jointmerge"		"joint_hipbelow,B"
//		"jointmerge"		"joint_hipbelow,joint_torso"
	}
}

$scale	0.95
$hboxset "default"

$hbox 2 "joint_hipbelow"	   -35.83  -41.75  -34.38    29.70   28.51   26.47
$hbox 3 "joint_torso"	  -106.06  -98.24   -9.44   100.01   82.44   75.39
$hbox 3 "joint_torsoabove"	  -116.02    0.00    0.00   116.02   18.20   43.23
$hbox 4 "joint_luarm"	   -26.68  -14.32  -52.16    15.92   24.89    3.80
$hbox 4 "joint_lgunabove"	   -27.58   -7.43  -28.82     8.28   16.97    0.00
$hbox 4 "joint_lgunlower"	   -31.94  -54.95  -18.54     0.59    0.00  105.71
$hbox 5 "joint_ruarm"	   -15.92  -14.32  -52.16    20.44   24.89    3.80
$hbox 5 "joint_rgunabove"	   -14.53   -7.43  -28.82    21.34   16.97    0.00
$hbox 5 "joint_rgunlower"	    -6.79  -54.95  -18.54    25.74    0.00  105.71
$hbox 7 "joint_ruleg"	   -43.92  -25.13  -82.58    14.55   57.87   14.42
$hbox 7 "joint_rdleg"	   -13.51  -80.17  -74.22    35.65    7.67    9.60
$hbox 7 "joint_rankle"	   -31.20  -25.07  -35.43    15.13   35.98   11.76
$hbox 7 "joint_ritoe"	    -2.36   -4.07  -10.16    32.29   21.57   11.81
$hbox 7 "joint_rotoe"	    -9.40   -5.86   -9.94    16.23   43.69   12.03
$hbox 7 "joint_rftoe"	   -11.60  -35.69  -10.80    14.04   13.87   11.17
$hbox 6 "joint_luleg"	   -20.34  -25.14  -82.49    38.11   57.86   14.52
$hbox 6 "joint_ldleg"	   -41.25  -80.17  -74.14     7.92    7.65    9.66
$hbox 6 "joint_lankle"	   -20.73  -25.02  -35.44    25.60   35.98   11.75
$hbox 6 "joint_litoe"	   -37.89   -4.07  -10.17     0.00   21.56   11.80
$hbox 6 "joint_lotoe"	   -19.68  -10.27   -9.95     5.96   39.28   12.02
$hbox 6 "joint_lftoe"	   -19.63  -35.74   -9.95     6.00   13.82   12.02
$hbox 0 "root"	   -12.39  -70.37    0.00     6.34    0.00  256.95