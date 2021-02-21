 // Created by Crowbar 0.56

$modelname "mechassault_2/turrets/heavy_turret.mdl"
$scale		2.1
$attachment "muzzle_L" "Guns" 22.00 0.00 63.00 rotate -90 -0 0
$attachment "muzzle_R" "Guns" -22.00 0.00 63.00 rotate -90 -0 0
$scale 50
$origin 0 0 -6 0

$BodyGroup "Base"
{
	studio "Heavy Turret Mesh.smd"
}




$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\military\Turret_Machinegun\"

$texturegroup "skinfamilies"
{
	{ "Turret_Auto"			"Glow"}
	{ "Turret_Auto_Red"		"Glow_Red"}
	{ "Turret_Auto_Blue"	"Glow_Blue"}
}

// RAGDOLL


$weightlist weights_turret {

"Guns" 0
"Turr" 1
"Base"	0

}


$weightlist weights_guns {

"Guns" 1
"Turr" 0
"Base"	0

}

$PoseParameter "aim_pitch" -45 45 0
$PoseParameter "aim_yaw" -180 180 0

// RAGDOLL



$Animation "a_idle" 		"anims\aim_mid_center.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}


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

$sequence "aimlayer_turret_pitch" {
	"aim_up_center" "aim_mid_center"  "aim_down_center"
	blend "aim_pitch" -45 20
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_guns"
}

$sequence "idle" {
	"anims\reference.smd"
	activity "ACT_IDLE" 1
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



$collisionjoints "Heavy Turre Physics.smd"
{
	$mass 1000
	$inertia 10
	$damping 0.5
	$rotdamping 1.5
	$rootbone "Turret Base"


}


