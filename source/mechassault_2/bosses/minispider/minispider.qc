// Created by Crowbar 0.56

$modelname "mechassault_2/bosses/minispider.mdl"
$attachment "rocketpod_L" "weapon_missleleft" 0.00 0.00 -10.00 rotate -0 -90 0
$attachment "rocketpod_R" "weapon_missleright" 0.00 0.00 -10.00 rotate -0 -90 0
$attachment "plasma_origin" "weapon_antimatterppc" 0.00 10.00 0.00 rotate 30 -90 0
$scale 30
//$origin 0 0 0 0

$BodyGroup "Body"
{
	studio "Mini_Spid.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\bosses\minispider\"



$weightlist weights_turret {

"joint_ROOT" 0
"joint_turret" 1
}

$weightlist weights_attack {

"joint_root" 0.5
"joint_lfupper" 0.25
"joint_lmupper" 0.25
"joint_lbupper" 0.7
"joint_rbupper" 0.7
"joint_rmupper" 0.25
"joint_rfupper" 0.25
"joint_rmandible"	1
"joint_lmandible"	1
"joint_turret"		1
}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL

$Animation "a_idle" "minisb_anims\minisb_base.smd" {
	fps 15
	loop
}
$Animation "a_charge" "minisb_anims\minisb_ppc_charge.smd" {
	fps 30
	loop
	subtract	"a_idle"	0	
	weightlist		"weights_attack"
}
$Animation "a_fire" "minisb_anims\minisb_ppc_ball_fire.smd" {
	fps 30
	loop
	subtract	"a_idle"	0	
	weightlist		"weights_attack"
}
$Animation "aim_mid_center" "minisb_anims\aim_mid_center.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "minisb_anims\aim_mid_left.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "minisb_anims\aim_mid_right.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_up_center" "minisb_anims\aim_mid_center.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_up_left" "minisb_anims\aim_mid_left.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_up_right" "minisb_anims\aim_mid_right.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_down_center" "minisb_anims\aim_mid_center.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_down_left" "minisb_anims\aim_mid_left.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_down_right" "minisb_anims\aim_mid_right.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "a_land" "minisb_anims\minisb_land.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_jumpidle" "minisb_anims\minisb_jump_idle.smd" {
	fps 30
}

$Animation "a_walk_N" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "minisb_anims\minisb_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0


$Animation "a_run_N" "minisb_anims\minisb_walk.smd" {
	fps 30
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_run_NW" "minisb_anims\minisb_walk.smd" {
	fps 30
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_run_NE" "minisb_anims\minisb_walk.smd" {
	fps 30
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "minisb_anims\minisb_walk.smd" {
	fps 30
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "minisb_anims\minisb_walk.smd" {
	fps 30
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "minisb_anims\minisb_walk.smd" {
	fps 30
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "minisb_anims\minisb_walk.smd" {
	fps 30
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "minisb_anims\minisb_walk.smd" {
	fps 30
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
	{ event AE_CL_PLAYSOUND 7 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 8 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 19 "MA2_Mech.Step" }
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
	{ event AE_CL_PLAYSOUND 7 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 8 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 19 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 20 "MA2_Mech.Step" }
}

$sequence "mech_grab_front" {
	"minisb_anims\minisb_attachfront.smd"
	activity "ACT_OVERLAY_SHIELD_ATTACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "mech_grab_front_idle" {
	"minisb_anims\minisb_attachfrontpose.smd"
	activity "ACT_OVERLAY_SHIELD_UP_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "mech_grab_back" {
	"minisb_anims\minisb_attachback.smd"
	activity "ACT_OVERLAY_SHIELD_ATTACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "mech_grab_back_idle" {
	"minisb_anims\minisb_attachbackpose.smd"
	activity "ACT_OVERLAY_SHIELD_UP_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$Sequence "PPC Charge" {
	"a_charge"
	activity "ACT_FIRE_START" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	delta
	walkframe 145 LX LY
}

$Sequence "PPC Ball Fire" {
	"a_fire"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	delta
	walkframe 145 LX LY

}

$Sequence "PPC Stance" {
	"minisb_anims\minisb_ppc_stance.smd"
	activity "ACT_OBJ_RUNNING" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	loop
	walkframe 145 LX LY
}

$Sequence "PPC Stance to Base" {
	"minisb_anims\minisb_ppc_stance.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "turn_left" {
	"minisb_anims\minisb_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "turn_right" {
	"minisb_anims\minisb_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "jump" {
	"minisb_anims\minisb_jump.smd"
	activity "ACT_JUMP" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "jump_idle" {
	"a_jumpidle"
	activity "ACT_HOVER" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$sequence "land" {
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"minisb_anims\minisb_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"minisb_anims\minisb_base.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down" {
	"minisb_anims\minisb_base.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down_pose" {
	"minisb_anims\minisb_base.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Mini_Spid.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Mini_Spid.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "Mini_Spid.smd" {

	$mass 2000.0
	$inertia 55.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_root"

	$jointconstrain "joint_rmupper" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rmupper" y limit -30.00 30.00 0.00
	$jointconstrain "joint_rmupper" z limit -50.00 15.00 0.00

	$jointconstrain "joint_rmmiddle" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rmmiddle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rmmiddle" z limit -20.00 30.00 0.00

	$jointconstrain "joint_rfupper" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rfupper" y limit -30.00 30.00 0.00
	$jointconstrain "joint_rfupper" z limit -50.00 15.00 0.00

	$jointconstrain "joint_rfmiddle" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rfmiddle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rfmiddle" z limit -20.00 30.00 0.00

	$jointconstrain "joint_rflower" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rflower" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rflower" z limit -40.00 5.00 0.00

	$jointconstrain "joint_lfupper" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lfupper" y limit -30.00 30.00 0.00
	$jointconstrain "joint_lfupper" z limit -50.00 15.00 0.00

	$jointconstrain "joint_lfmiddle" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lfmiddle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lfmiddle" z limit -20.00 30.00 0.00

	$jointconstrain "joint_lflower" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lflower" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lflower" z limit -40.00 5.00 0.00

	$jointconstrain "joint_lmupper" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lmupper" y limit -30.00 30.00 0.00
	$jointconstrain "joint_lmupper" z limit -50.00 15.00 0.00

	$jointconstrain "joint_lmmiddle" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lmmiddle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lmmiddle" z limit -20.00 30.00 0.00

	$jointconstrain "joint_lmlower" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lmlower" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lmlower" z limit -40.00 5.00 0.00

	$jointconstrain "joint_lbupper" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lbupper" y limit -30.00 30.00 0.00
	$jointconstrain "joint_lbupper" z limit -50.00 15.00 0.00

	$jointconstrain "joint_lbmiddle" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lbmiddle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lbmiddle" z limit -20.00 30.00 0.00

	$jointconstrain "joint_lblower" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lblower" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lblower" z limit -40.00 5.00 0.00

	$jointconstrain "joint_rbupper" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rbupper" y limit -30.00 30.00 0.00
	$jointconstrain "joint_rbupper" z limit -50.00 15.00 0.00

	$jointconstrain "joint_rblower" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rblower" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rblower" z limit -40.00 5.00 0.00

	$jointconstrain "joint_turret" x limit 0.00 0.00 0.00
	$jointconstrain "joint_turret" y limit 0.00 0.00 0.00
	$jointconstrain "joint_turret" z limit -180.00 180.00 0.00

	$jointconstrain "joint_rmlower" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rmlower" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rmlower" z limit -40.00 5.00 0.00
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

$hbox 2 "joint_root"	   -22.68  -51.87  -14.35    23.91   56.93   38.20
$hbox 2 "joint_rmandible"	   -11.15  -24.32   -4.79     7.92    5.80    2.46
$hbox 2 "joint_lmandible"	    -6.05  -23.92   -4.84    13.02    6.20    2.41
$hbox 2 "joint_turret"	   -31.42  -42.09   -5.95    32.84   30.12   44.01
$hbox 2 "sb_turret"	   -16.13  -35.07    0.00    15.59    0.00   11.19
$hbox 5 "joint_rbupper"	    -7.74   -9.99  -13.41    46.56   12.75   11.58
$hbox 5 "joint_rbmiddle"	   -17.31  -24.01  -13.10    47.85    5.98   13.75
$hbox 5 "joint_rblower"	   -19.74  -10.59  -20.08    64.41   22.44   22.33
$hbox 4 "joint_lbupper"	    -6.87  -10.34  -12.46    47.22   12.51   12.22
$hbox 4 "joint_lbmiddle"	   -16.79  -23.39  -13.56    47.89    6.39   13.01
$hbox 4 "joint_lblower"	   -20.34   -9.49  -21.83    64.39   23.37   20.42
$hbox 4 "joint_lmupper"	    -1.38   -8.44  -13.07    52.05   11.55   11.59
$hbox 4 "joint_lmmiddle"	   -15.88  -17.77  -14.46    48.70   12.18   11.88
$hbox 4 "joint_lmlower"	   -17.58  -13.47  -21.52    67.75   16.69   20.91
$hbox 4 "joint_lfupper"	    -6.08   -6.90  -11.38    47.38   12.61   13.04
$hbox 4 "joint_lfmiddle"	   -17.60  -23.17  -13.04    47.85    8.47   12.81
$hbox 4 "joint_lflower"	   -24.75  -10.48  -21.35    60.41   20.01   21.07
$hbox 5 "joint_rfupper"	    -6.80   -7.02  -13.07    46.71   13.72   11.68
$hbox 5 "joint_rfmiddle"	   -18.91  -22.83  -15.61    47.85    8.47   11.62
$hbox 5 "joint_rflower"	   -22.14   -9.96  -22.90    62.98   20.91   19.50
$hbox 5 "joint_rmupper"	    -2.59   -7.99  -11.49    50.84   11.99   13.17
$hbox 5 "joint_rmmiddle"	   -16.86  -18.61  -11.79    47.85   11.34   14.54
$hbox 5 "joint_rmlower"	   -17.39  -12.21  -20.83    67.89   17.98   21.60

// .qc block generated by HLMV ends.


