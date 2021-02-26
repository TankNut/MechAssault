// Created by Crowbar 0.56

$modelname "mechassault_2/bosses/Uber_mech.mdl"
$attachment "PPC_L" "joint_lgun" 18.00 -275.00 -60.50 rotate -0 -90 0
$attachment "PPC_R" "joint_rgun" -19.00 -275.00 -60.50 rotate -0 -90 0
$attachment "Flamethrower" "joint_jaw" 0.00 -45.00 20.50 rotate -30 -90 0
$attachment "Laser_L" "joint_skull" 25.00 -120.00 40.50 rotate -0 -90 0
$attachment "Laser_R" "joint_skull" -25.00 -120.00 40.50 rotate -0 -90 0
$attachment "Mortar_R" "joint_spine_upper" -120.00 -210.00 85.50 rotate -15 -90 0
$attachment "Mortar_L" "joint_spine_upper" 120.00 -210.00 85.50 rotate -15 -90 0
$scale 32
//$origin 0 0 0 0

$BodyGroup "Body"
{
	studio "Uber_Hull.smd"
}
$BodyGroup "Skull"
{
	studio "Uber_skull.smd"
	blank
}

$BodyGroup "Jaw"
{
	studio "Uber_jaw.smd"
	blank
}

$BodyGroup "Back Clamp"
{
	studio "Uber_Clamp.smd"
	blank
}

$BodyGroup "Glow"
{
	studio "Uber_Glow.smd"
	blank
}



$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\bosses\uber\"


$weightlist weights_turret {

"joint_torso" 0
"joint_orientfix" 1
}

$PoseParameter "aim_pitch" -45 45 0
$PoseParameter "aim_yaw" -45 45 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL
$Animation "a_idle" "uber_anims\uber_base.smd" {
	fps 15
	loop
}

$Animation "aim_mid_center" "uber_anims\aim_mid_center.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "uber_anims\aim_mid_left.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "uber_anims\aim_mid_right.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_up_center" "uber_anims\aim_up_center.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_up_left" "uber_anims\aim_up_left.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_up_right" "uber_anims\aim_up_right.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_down_center" "uber_anims\aim_down_center.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_down_left" "uber_anims\aim_down_left.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "aim_down_right" "uber_anims\aim_down_right.smd" {
	fps 15
	loop
	weightlist	"weights_turret"
	subtract "a_idle" 0
}
$Animation "a_land" "uber_anims\uber_land.smd" {
	fps 30
	subtract "a_idle" 0
}

$Animation "a_crawl_N" "uber_anims\uber_crawl.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_crawl_NW" "uber_anims\uber_crawl.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_crawl_NE" "uber_anims\uber_crawl.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_crawl_W" "uber_anims\uber_crawl.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_crawl_E" "uber_anims\uber_crawl.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_crawl_S" "uber_anims\uber_crawl.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_crawl_SW" "uber_anims\uber_crawl.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_crawl_SE" "uber_anims\uber_crawl.smd" {
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

$Sequence "crawl" {
	"a_crawl_NW"
	"a_crawl_N"
	"a_crawl_NE"
	"a_crawl_W"
	"a_idle"
	"a_crawl_E"
	"a_crawl_SW"
	"a_crawl_S"
	"a_crawl_SE"
	activity "ACT_WALK" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 23 "MA2_UberMech.Step" }
	{ event AE_CL_PLAYSOUND 53 "MA2_UberMech.Step" }
}

$sequence "Ground Pound" {
	"uber_anims\uber_ground_pound.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 1100 27 "event_ma2_UberBoss_stomp" }
	{ event AE_CL_PLAYSOUND 27 "MA2_UberBoss.Stomp" }
}


$Sequence "death" {
	"uber_anims\uber_death.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "Mortar Fire Start" {
	"uber_anims\uber_mortar_fire_start.smd"
	activity "ACT_FIRE_START" 1
	fadein 0.3
	fadeout 0.5
	fps 30
}

$Sequence "Mortar Firing" {
	"uber_anims\uber_mortar_fire.smd"
	activity "ACT_FIRE_LOOP" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	loop
}

$Sequence "Mortar Fire End" {
	"uber_anims\uber_mortar_fire_end.smd"
	activity "ACT_FIRE_END" 1
	fadein 0.3
	fadeout 0.5
	fps 30
}

$Sequence "Flamethrower Fire Start" {
	"uber_anims\uber_mouth_fire_start.smd"
	activity "ACT_FIRE_START" 1
	fadein 0.3
	fadeout 0.5
	fps 30
}

$Sequence "Flamethrower Fire" {
	"uber_anims\uber_mouth_fire.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$sequence "turn_left" {
	"uber_anims\uber_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "turn_right" {
	"uber_anims\uber_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
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
	"uber_anims\uber_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"uber_anims\uber_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down" {
	"uber_anims\uber_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down_pose" {
	"uber_anims\uber_intro_pose.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Uber_Hull.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Uber_Hull.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "Uber_Physics.smd" {

	$mass 450000.0
	$inertia 55.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_root"

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

