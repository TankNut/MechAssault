 // Created by Crowbar 0.56

$modelname "mechassault_2/turrets/laser_drop_turret.mdl"
$attachment "muzzle" "Cann" -4.70 35.00 -0.60 rotate 0 90 0
$scale 17
//$origin 0 0 -38 0

$BodyGroup "Base"
{
	studio "Vtol Drop Turret.smd"
}




$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\military\Turret_Laser\"


// RAGDOLL


$weightlist weights_rotate {

"Base" 0
"Turr" 1
"Cann"	0
"Flap L"	0.4
"Flap R"	0.4
}


$weightlist weights_turret {

"Base" 0
"Turr" 0
"Cann"	1
"Flap L"	0
"Flap R"	0
}

$PoseParameter "aim_pitch" -45 45 0
$PoseParameter "aim_yaw" -180 180 0

// RAGDOLL

$Animation "a_idle_closed" 		"anims\reference.smd" {
	fps 15
	loop
}

$Animation "a_idle" 		"anims\aim_mid_center.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_rotate"
}
$Animation "aim_mid_left" "anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_rotate"
}
$Animation "aim_mid_right" "anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_rotate"
}
$Animation "aim_up_center" "anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_up_left" "anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_up_right" "anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_down_center" "anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle_closed" 0
	weightlist	"weights_turret"
}
$Animation "aim_down_left" "anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle_closed" 0
	weightlist	"weights_turret"
}
$Animation "aim_down_right" "anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle_closed" 0
	weightlist	"weights_turret"
}
$Animation "a_open" "anims\deploy.smd" {
	fps 30
	subtract "a_idle_closed" 0
}
$Animation "a_close" "anims\flaps_close.smd" {
	fps 30
	subtract "a_idle_closed" 0
}
$origin 0 0 0 0


$sequence "aimlayer_turret_yaw" {
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	blend "aim_yaw" -180 180
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_rotate"
}

$sequence "aimlayer_turret_pitch" {
	"aim_up_center" "aim_mid_center"  "aim_down_center"
	blend "aim_pitch" -45 45
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_turret"
}



$origin 0 0 0 180
$sequence "deploy" {
	"anims\deploy.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$origin 0 0 0 0
$sequence "idle" {
	"anims\reference.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_deployed" {
	"anims\flaps_opened.smd"
	activity "ACT_DEPLOY_IDLE" 1
	addlayer	"aimlayer_turret_yaw"
	addlayer	"aimlayer_turret_pitch"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$Sequence "reference" {
	"anims\reference.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"anims\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}



$collisionjoints "Turret_laser_physics.smd"
{
	$mass 500
	$inertia 10
	$damping 0.5
	$rotdamping 1.5
	$rootbone "Turret Base"


}

