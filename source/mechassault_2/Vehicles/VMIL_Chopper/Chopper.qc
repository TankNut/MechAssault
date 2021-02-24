// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_Chopper.mdl"
$scale 1
$attachment "Guns_L" "Hull" 110.00 90.00 -0.00 rotate 90 -0 0
$attachment "Guns_R" "Hull" -110.00 90.00 -0.00 rotate 90 -0 0
$scale 40
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Heavy chopper.smd"
}
$BodyGroup "Rotors"
{
	studio "Blades 1.smd"
}
$BodyGroup "Rotors"
{
	studio "Blades 2.smd"
}
$BodyGroup "Landing Gear"
{
	studio "Heavy chopper Landing Gear.smd"
	blank
}
$BodyGroup "Weapons"
{
	studio "Heavy chopper Weapons.smd"
	blank
}
$BodyGroup "Lights"
{
	studio "Lights.smd"
	blank
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Chopper\"

$texturegroup "skinfamilies"
{
	{ "HVY_CHP"}
	{ "HVY_CHP_MP"}
}

$weightlist weights_rotors {

"Rot 1" 1
"Rot 2" 0
"Hull"	0
}

$weightlist weights_rotors2 {

"Rot 1" 0
"Rot 2" 1
"Hull"	0
}


// RAGDOLL
$Animation "a_idle" "chopper_anims\reference.smd" {
	fps 15
	loop
}
$Animation "a_hover" "chopper_anims\hover.smd" {
	fps 15
	loop
	
}
$Animation "a_rotors" "chopper_anims\rotors_spin2.smd" {
	fps 100
	loop
//	subtract	"a_idle"	0
	weightlist	"weights_rotors"
}
$Animation "a_rotors2" "chopper_anims\rotors_spin3.smd" {
	fps 100
	loop
//	subtract	"a_idle"	0
	weightlist	"weights_rotors2"
}
$Animation "a_move_N" "chopper_anims\move_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_move_NW" "chopper_anims\move_NW.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_move_NE" "chopper_anims\move_NE.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$Animation "a_move_W" "chopper_anims\move_W.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$Animation "a_move_E" "chopper_anims\move_E.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$Animation "a_move_S" "chopper_anims\move_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_move_SW" "chopper_anims\move_SW.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_move_SE" "chopper_anims\move_SE.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$sequence "rotors_layer" {
	"a_rotors"
	fadein 0.2
	fadeout 0.2
	fps 120
//	delta
	loop
	weightlist	"weights_rotors"

}

$sequence "rotors_layer2" {
	"a_rotors2"
	fadein 0.2
	fadeout 0.2
	fps 120
//	delta
	loop
	weightlist	"weights_rotors2"

}

$Sequence "move_slow" {
	"a_move_NW"
	"a_move_N"
	"a_move_NE"
	"a_move_W"
	"a_hover"
	"a_move_E"
	"a_move_SW"
	"a_move_S"
	"a_move_SE"
	activity "ACT_WALK" 1	
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 30
	addlayer	"rotors_layer"
	addlayer	"rotors_layer2"
	node "movement"
	walkframe 145 LX LY
}

$sequence "idle" {
	"chopper_anims\reference.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "hover" {
	"chopper_anims\hover.smd"
	activity "ACT_HOVER" 1
	addlayer	"rotors_layer"
	addlayer	"rotors_layer2"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$Sequence "reference" {
	"Heavy chopper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Heavy chopper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionmodel "Heavy chopper.smd" {

	$mass 1250.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
}

