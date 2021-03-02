// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/VMIL_Galleon.mdl"
$attachment "Cann Main" "Cann T" 0.00 110.00 0.00 rotate 0 90 180
$attachment "Cann Left" "Cann 1L" 7.50 72.00 0.00 rotate -0 90 180
$attachment "Cann Right" "Cann 1R" -6.0 72.00 0.00 rotate 0 90 180
$scale 35
$origin 0 0 -8 0

$BodyGroup "Hull"
{
	studio "VMIL_Galleon.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Galleon\"

$texturegroup "skinfamilies"
{
	{ "VMIL_Galleon"  }
	{ "VMIL_Galleon_MP" }
}

$PoseParameter "aim_pitch" -45 20 0
$PoseParameter "aim_yaw" -180 180 0

$weightlist weights_turr {

"Turr T" 1
"Cann T" 0
"Turr 1L"	0
"Turr 1R"	0
"Hull"	0
}


$weightlist weights_cannon {

"Turr T" 0
"Turr 1L" 1
"Turr 1R" 1
"Hull"	0

}

$Animation "a_idle" "galleon_anims\reference.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "galleon_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turr"
}
$Animation "aim_mid_left" "galleon_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turr"
}
$Animation "aim_mid_right" "galleon_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turr"
}
$Animation "aim_up_center" "galleon_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_up_left" "galleon_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_up_right" "galleon_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_center" "galleon_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_left" "galleon_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_right" "galleon_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "a_walk_N" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -8 45

$Animation "a_walk_NW" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -8 -45

$Animation "a_walk_NE" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 -8 90
$Animation "a_walk_W" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 -8 -90
$Animation "a_walk_E" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 -8 180
$Animation "a_walk_S" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -8 135
$Animation "a_walk_SW" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 -8 -135
$Animation "a_walk_SE" "galleon_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 -8 0


$Animation "a_fire" "galleon_anims\fire.smd" {
	fps 30
	subtract "a_idle" 0
}

// RAGDOLL


$sequence "aimlayer_turr_yaw" {
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	blend "aim_yaw" -180 180
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_turr"
}

$sequence "aimlayer_turr_pitch" {
	"aim_up_center" "aim_mid_center"  "aim_down_center"
	blend "aim_pitch" -45 45
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_cannon"
}

$sequence "fire" {
	"a_fire"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$Sequence "move" {
	"a_walk_NW"
	"a_walk_N"
	"a_walk_NE"
	"a_walk_W"
	"a_idle"
	"a_walk_E"
	"a_walk_SW"
	"a_walk_S"
	"a_walk_SE"
	activity "ACT_RUN" 1
	addlayer	"aimlayer_turr_yaw"
	addlayer	"aimlayer_turr_pitch"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 30
	node "movement"
	walkframe 145 LX LY
}

$Sequence "move_slow" {
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
	addlayer	"aimlayer_turr_yaw"
	addlayer	"aimlayer_turr_pitch"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
}

$sequence "idle" {
	"galleon_anims\reference.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_turr_yaw"
	addlayer	"aimlayer_turr_pitch"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$Sequence "reference" {
	"VMIL_Galleon.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"VMIL_Galleon.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "VMIL_Galleon.smd" {

	$mass 3000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"

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
		"rootname"		"Hull"
		"totalmass"		"90.000000"
//		"jointmerge"		"Hull,B"
//		"jointmerge"		"Hull,turr"
	}
}
