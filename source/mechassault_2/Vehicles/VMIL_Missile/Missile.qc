// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_antiair.mdl"
$scale 250
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "VMil Missile Turret.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_AntiAir\"

$texturegroup "skinfamilies"
{
	{ "Missile_Platform"}
	{ "Missile_Platform_MP" }
}

$PoseParameter "aim_pitch" -45 20 0
$PoseParameter "aim_yaw" -180 180 0

$weightlist weights_turret {

"Pod" 1
"Pad" 0
"Plat"	0

}


$weightlist weights_cannon {

"Pad" 1
"Plat"	0

}

$Animation "a_idle" "aa_anims\reference.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "aa_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_mid_left" "aa_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_mid_right" "aa_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_up_center" "aa_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_up_left" "aa_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_up_right" "aa_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_center" "aa_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_left" "aa_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_right" "aa_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}

$origin 0 0 0 0


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

$sequence "aimlayer_turret_pitch" {
	"aim_up_center" "aim_mid_center"  "aim_down_center"
	blend "aim_pitch" -45 20
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_cannon"
}

$sequence "idle" {
	"aa_anims\reference.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_turret_yaw"
	addlayer	"aimlayer_turret_pitch"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$Sequence "reference" {
	"VMil Missile Turret.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"VMil Missile Turret.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "VMil Missile Turret.smd" {

	$mass 8000.0
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
//		"jointmerge"		"Hull,Turret"
	}
}
