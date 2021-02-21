 // Created by Crowbar 0.56

$modelname "mechassault_2/turrets/autocannon_turret.mdl"
$attachment "muzzle" "Cann" 0.00 18.00 60.00 rotate -90 -0 0
$scale 24
//$origin 0 0 -38 0

$BodyGroup "Base"
{
	studio "Auto Turret Temp.smd"
}




$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\military\Turret_Autocannon\"

$texturegroup "skinfamilies"
{
	{ "Auto_Turret"		"Emit"}
	{ "Auto_Turret_MP"	"Emit_MP"}
}

// RAGDOLL


$weightlist weights_turret {

"Cann" 0
"Turr" 1
"Base"	0

}


$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0

// RAGDOLL



$Animation "a_idle" 		"anims\reference.smd" {
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
$Animation "aim_up_center" "anims\aim_mid_center.smd" {
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
$Animation "aim_down_center" "anims\aim_mid_center.smd" {
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
$origin 0 0 0 0


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


$sequence "idle" {
	"anims\reference.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_turret_yaw"
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



$collisionjoints "Auto Turret Temp_physics.smd"
{
	$mass 1000
	$inertia 10
	$damping 0.5
	$rotdamping 1.5
	$rootbone "Turret Base"


}


