// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/Stiletto.mdl"

$scale 1
$attachment "Autocannon" "joint_torso" -122.00 -100.00 39.50 rotate -0 -90 -90
$attachment "Pulse_Laser" "joint_torso" -67.50 -66.00 82.00 rotate -0 -90 0
$attachment "Missiles_1" "joint_torso" 74.00 50.00 100.50 rotate -0 -90 0
$attachment "Missiles_2" "joint_torso" -74.00 50.00 100.50 rotate -0 -90 0
$attachment "jumpjets_main" "joint_torso" -3.00 120.00 -12.00 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 44.00 140.00 33.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -55.00 143.00 33.00 rotate 30 140 0
$scale 1
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 160.00 35.00 rotate -0 -90 0
$scale 40
//$origin 0 0 -38 0

$BodyGroup "Legs"
{
	studio "Raptor Hips.smd"
}

$BodyGroup "Jumpjets"
{
	studio "Cougar Jump Jets.smd"
}	
	



$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\Stiletto\"

$texturegroup "skinfamilies"
{
	{ "Stiletto"    	  	 "Reac_Glow"}
	{ "Raptor" 	 "Reac_Glow_2"}
	{ "Stiletto_MP" 	 "Reac_Glow_3"}
	{ "Raptor_MP" 	 "Reac_Glow_3"}
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



$Animation "a_idle" "raptor_anims\rap_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "raptor_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "raptor_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "raptor_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "raptor_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "raptor_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "raptor_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "raptor_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "raptor_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "raptor_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "raptor_anims\rap_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "raptor_anims\rap_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "raptor_anims\rap_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "raptor_anims\rap_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "raptor_anims\rap_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "raptor_anims\rap_walk.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "raptor_anims\rap_run.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "raptor_anims\rap_lgimp.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "raptor_anims\rap_lgimp.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "raptor_anims\rap_lgimp.001.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "raptor_anims\rap_lgimp.001.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "raptor_anims\rap_lgimp.001.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "raptor_anims\rap_lgimp.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "raptor_anims\rap_lgimp.001.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "raptor_anims\rap_lgimp.001.smd" {
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
	{ event AE_CL_PLAYSOUND 10 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 19 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"raptor_anims\rap_lgimp.smd"
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
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"raptor_anims\rap_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"raptor_anims\rap_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"raptor_anims\rap_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"raptor_anims\rap_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"raptor_anims\rap_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 27 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 42 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"raptor_anims\rap_getup.smd"
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
	"raptor_anims\rap_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"raptor_anims\rap_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"raptor_anims\rap_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"raptor_anims\rap_lgimp2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"raptor_anims\rap_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"raptor_anims\rap_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}
//$origin 0 0 -155 0

$sequence "power_down_pose" {
	"raptor_anims\rap_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
//$origin 0 0 0 0


$Sequence "reference" {
	"Raptor Hips.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Raptor Hips.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "raptor_physics.smd" {

	$mass 50000.0
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

$hboxset "default"

$hbox 2 "joint_ROOT"	   -86.88  -60.19  -48.66    78.33   36.55   40.55
$hbox 3 "joint_torso"	  -155.61 -157.20  -40.93   147.05  151.43  108.13
$hbox 7 "joint_ruleg"	   -82.28  -40.88  -73.74     0.00  104.88   24.77
$hbox 7 "joint_rdleg"	   -28.87 -112.08 -160.46    17.63   41.39    5.32
$hbox 7 "joint_rankle"	   -40.38  -40.19  -47.49    40.99   26.22   20.12
$hbox 7 "joint_rbtoe"	   -18.95   -9.66  -15.23    17.77   55.45    9.12
$hbox 7 "joint_rftoe"	   -41.82  -58.50  -15.24    42.53    9.52    9.11
$hbox 6 "joint_luleg"	    -1.53  -40.88  -73.87    74.05  104.88   24.64
$hbox 6 "joint_ldleg"	   -25.86 -112.08 -160.59    20.64   41.39    5.19
$hbox 6 "joint_lankle"	   -49.22  -40.19  -47.49    32.15   26.22   20.12
$hbox 6 "joint_lbtoe"	   -26.00   -9.66  -15.23    10.72   55.45    9.12
$hbox 6 "joint_lftoe"	   -50.76  -58.50  -15.24    33.59    9.52    9.11

// .qc block generated by HLMV ends.


