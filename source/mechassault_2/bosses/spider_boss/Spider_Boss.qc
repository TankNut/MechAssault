// Created by Crowbar 0.56

$modelname "mechassault_2/bosses/Spider_Boss.mdl"
//$attachment "rocketpod_L" "joint_torso" 52.00 25.00 105.50 rotate -0 -90 0
//$attachment "rocketpod_R" "joint_torso" -52.00 25.00 105.50 rotate -0 -90 0
$scale 32
//$origin 0 0 0 0

$BodyGroup "Body"
{
	studio "Spider_Boss.smd"
}
$scale 33.5
$BodyGroup "Body"
{
	studio "Spider_Boss_Shield.smd"
	blank
}
$scale 32
$BodyGroup "Leg Front Right"
{
	studio "Spider_Boss_Leg_RF.smd"
	blank
}

$BodyGroup "Leg Mid Right"
{
	studio "Spider_Boss_Leg_RM.smd"
	blank
}

$BodyGroup "Leg Back Right"
{
	studio "Spider_Boss_Leg_RB.smd"
	blank
}

$BodyGroup "Leg Front Left"
{
	studio "Spider_Boss_Leg_LF.smd"
	blank
}

$BodyGroup "Leg Mid Left"
{
	studio "Spider_Boss_Leg_LM.smd"
	blank
}

$BodyGroup "Leg Back Left"
{
	studio "Spider_Boss_Leg_LB.smd"
	blank
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\bosses\spider\"


$weightlist weights_leg_RF {

"joint_rfupper" 1
"joint_root" 0
}

$weightlist weights_leg_RM {

"joint_rmupper" 1
"joint_root" 0
}

$weightlist weights_leg_RB {

"joint_rbupper" 1
"joint_root" 0
}

$weightlist weights_leg_LF {

"joint_lfupper" 1
"joint_root" 0
}

$weightlist weights_leg_LM {

"joint_lmupper" 1
"joint_root" 0
}

$weightlist weights_leg_LB {

"joint_lbupper" 1
"joint_root" 0
}


//$PoseParameter "aim_pitch" -1 1 0
//$PoseParameter "aim_yaw" -180 180 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL


$Animation "a_idle" "sb_anims\sb_base.smd" {
	fps 15
	loop
}
$Animation "a_land" "sb_anims\sb_land.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_jumpidle" "sb_anims\sb_jump_idle.smd" {
	fps 30
	subtract "a_idle" 0
}

$Animation "a_walk_N" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "sb_anims\sb_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0


$Animation "a_run_N" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_run_NW" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_run_NE" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "sb_anims\sb_walk.smd" {
	fps 30
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0

$Animation "a_gimp_leg_RF" "sb_anims\sb_gimp_right_front_leg.smd" {
	fps 30
	subtract "a_walk_N" 0
}

$Animation "a_gimp_leg_RM" "sb_anims\sb_gimp_right_middle_leg.smd" {
	fps 30
	subtract "a_walk_N" 0
}

$Animation "a_gimp_leg_RB" "sb_anims\sb_gimp_right_back_leg.smd" {
	fps 30
	subtract "a_walk_N" 0
}

$Animation "a_gimp_leg_LF" "sb_anims\sb_gimp_left_front_leg.smd" {
	fps 30
	subtract "a_walk_N" 0
}

$Animation "a_gimp_leg_LM" "sb_anims\sb_gimp_left_middle_leg.smd" {
	fps 30
	subtract "a_walk_N" 0
}

$Animation "a_gimp_leg_LB" "sb_anims\sb_gimp_left_back_leg.smd" {
	fps 30
	subtract "a_walk_N" 0
}

$origin 0 0 0 0

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

$sequence "stomp" {
	"sb_anims\sb_leg_stomp.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
	{ event 1100 27 "event_ma2_spider_boss_stomp" }
}

$sequence "stomp_angry" {
	"sb_anims\sb_leg_stomp.smd"
	activity "ACT_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 50
	walkframe 145 LX LY
	{ event 1100 27 "event_ma2_spider_boss_stomp" }
}


$Sequence "death" {
	"sb_anims\sb_death.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "PPC Charge" {
	"sb_anims\sb_ppc_charge.smd"
	activity "ACT_FIRE_START" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "PPC Beam Firing" {
	"sb_anims\sb_ppc_beam_fire.smd"
	activity "ACT_FIRE_LOOP" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	loop
	walkframe 145 LX LY
}

$Sequence "PPC Ball Fire" {
	"sb_anims\sb_ppc_ball_fire.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "PPC Stance" {
	"sb_anims\sb_ppc_stance.smd"
	activity "ACT_OBJ_RUNNING" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	loop
	walkframe 145 LX LY
}

$Sequence "PPC Stance to Base" {
	"sb_anims\sb_ppc_stance.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "turn_left" {
	"sb_anims\sb_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "turn_right" {
	"sb_anims\sb_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}


$sequence "walk_gimp_RF" {
	"a_gimp_leg_RF"
	activity "ACT_WALK_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
	weightlist	"weights_leg_RF"
}

$sequence "walk_gimp_RM" {
	"a_gimp_leg_RM"
	activity "ACT_WALK_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
	weightlist	"weights_leg_RM"
}

$sequence "walk_gimp_RB" {
	"a_gimp_leg_RB"
	activity "ACT_WALK_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
	weightlist	"weights_leg_RB"
}

$sequence "walk_gimp_LF" {
	"a_gimp_leg_LF"
	activity "ACT_WALK_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
	weightlist	"weights_leg_LF"
}

$sequence "walk_gimp_LM" {
	"a_gimp_leg_LM"
	activity "ACT_WALK_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
	weightlist	"weights_leg_LM"
}

$sequence "walk_gimp_LB" {
	"a_gimp_leg_LB"
	activity "ACT_WALK_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
	weightlist	"weights_leg_LB"
}

$sequence "jump" {
	"sb_anims\sb_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "jump_idle" {
	"a_jumpidle"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}



$sequence "land" {
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 145 LX LY
}

$sequence "idle" {
	"sb_anims\sb_base.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"sb_anims\sb_base.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down" {
	"sb_anims\sb_base.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down_pose" {
	"sb_anims\sb_base.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Spider_Boss.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Spider_Boss.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "spiderboss_physics.smd" {

	$mass 450000.0
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

$hbox 2 "joint_root"	  -208.30 -431.11 -175.28   207.70  637.85  340.10
$hbox 2 "joint_jaw"	   -69.29  -55.10  -54.21    66.70   75.46   68.88
$hbox 2 "joint_rmandible"	  -117.54 -136.08  -21.09    45.28  113.30   64.07
$hbox 2 "joint_lmandible"	   -41.02 -135.16  -21.22   121.80  114.23   63.94
$hbox 1 "joint_turret"	  -346.33 -320.45  -79.54   345.77  365.50  385.34
$hbox 5 "joint_rbupper"	   -11.92  -82.55  -92.29   405.21  115.00   98.95
$hbox 5 "joint_rbmiddle"	  -120.63 -153.63 -106.35   382.82   89.53  105.69
$hbox 5 "joint_rblower"	  -160.28 -123.32 -168.28   532.68  132.44  174.99
$hbox 4 "joint_lbupper"	   -12.66  -82.28  -99.12   404.46  115.41   92.21
$hbox 4 "joint_lbmiddle"	  -121.39 -153.98 -105.92   382.82   89.12  106.27
$hbox 4 "joint_lblower"	  -159.88 -122.71 -175.12   533.18  133.00  168.15
$hbox 6 "joint_lmupper"	   -32.74  -86.09  -92.25   382.56  118.01   98.57
$hbox 6 "joint_lmmiddle"	  -148.60 -151.44  -94.12   382.82   81.50  117.73
$hbox 6 "joint_lmlower"	  -129.67 -116.32 -154.18   563.78  144.08  188.84
$hbox 8 "joint_lfupper"	   -39.44 -106.60 -104.57   380.76  105.65   98.50
$hbox 8 "joint_lfmiddle"	  -127.80 -177.58 -126.28   382.82   64.96  102.74
$hbox 8 "joint_lflower"	  -169.53 -106.53 -181.27   524.41  153.39  161.76
$hbox 5 "joint_rfupper"	   -41.81 -105.48  -99.43   373.04  110.43  100.90
$hbox 5 "joint_rfmiddle"	  -132.00 -177.61 -132.45   382.82   67.69  100.58
$hbox 5 "joint_rflower"	  -163.11 -104.93 -183.56   529.21  156.80  159.25
$hbox 7 "joint_rmupper"	   -30.24  -86.88  -98.67   385.11  117.17   92.08
$hbox 7 "joint_rmmiddle"	  -150.08 -147.95 -112.37   382.82   79.39   97.13
$hbox 7 "joint_rmlower"	  -131.62 -116.15 -199.08   565.60  141.75  143.68

// .qc block generated by HLMV ends.

