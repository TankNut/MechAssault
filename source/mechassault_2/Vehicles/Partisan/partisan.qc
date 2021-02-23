// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_partisan.mdl"
$attachment "Cannon_upper" "Cann" 0.00 135.00 -7.50 rotate -0 90 180
$attachment "Cannon_lower" "Cann" 0.00 114.00 7.50 rotate -0 90 180
$scale 20
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Vmil Partisan Tank Hull.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_partisan\"

// RAGDOLL


$PoseParameter "aim_yaw" -180 180 0

$weightlist weights_turret {

"Turret" 1
"Cann" 0
"Hull"	0

}


$weightlist weights_cannon {

"Turret" 0
"Cann" 1
"Hull"	0

}

$Animation "a_idle" "tank_anims\reference.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "tank_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_mid_left" "tank_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_mid_right" "tank_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "a_walk_N" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "tank_anims\tank_move_slow_N.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0


$Animation "a_fire" "tank_anims\fire.smd" {
	fps 30
	subtract "a_idle" 0
}

$Animation "a_death" "tank_anims\death.smd" {
	fps 30
	subtract "a_idle" 0
}

// RAGDOLL


$sequence "aimlayer_turret_yaw" {
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	blend "aim_yaw" -180 180
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_turret"
}


$sequence "power_down_pose" {
	"tank_anims\reference.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fire" {
	"a_fire"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}


$Sequence "death" {
	"a_death"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 20
	delta
	walkframe 145 LX LY
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
	addlayer	"aimlayer_turret_yaw"
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
	addlayer	"aimlayer_turret_yaw"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
}

$sequence "idle" {
	"tank_anims\reference.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_turret_yaw"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$Sequence "reference" {
	"Vmil Partisan Tank Hull.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Vmil Partisan Tank Hull.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "partisan_physics.smd" {

	$mass 5000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"
	$jointconstrain "Turr" x limit 0.00 0.00 0.00
	$jointconstrain "Turr" y limit -180.00 180.00 0.00
	$jointconstrain "Turr" z limit 0.00 0.00 0.00

	$jointconstrain "cann" x limit 0.00 0.00 0.00
	$jointconstrain "cann" y limit 0.00 0.00 0.00
	$jointconstrain "cann" z limit 0.00 0.00 0.00

	$jointcollide cann Turr
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
//		"jointmerge"		"Hull,Turr"
	}
}
