// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_Cargo_Copter.mdl"
$scale 1
$attachment "Guns_L" "Hull" 156.00 -100.00 150.00 rotate -90 -0 0
$attachment "Guns_R" "Hull" -156.00 -100.00 150.00 rotate -90 -0 0
$attachment "Misc" "Hull" 0.00 -87.00 7.00 rotate 0 90 0
$scale 40
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Cargo_Copter.smd"
}
$BodyGroup "Rotors"
{
	studio "WOB ChopperBladelet.smd"
}
$BodyGroup "Rotors"
{
	studio "WOB ChopperBladelet.001.smd"
}
$BodyGroup "Rotors"
{
	studio "WOB ChopperBladelet.002.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Copter\"

$texturegroup "skinfamilies"
{
	{ "Cargo_Chopper"}
	{ "Cargo_Chopper_MP"}
}

$weightlist weights_rotors {

"RotorL" 1
"RotorR" 1
"RotorB" 1
"Hull"	0
}



// RAGDOLL
$Animation "a_idle" "copter_anims\reference.smd" {
	fps 15
	loop
}

$Animation "a_rotors" "copter_anims\rotors_spin.smd" {
	fps 15
	loop
	subtract	"a_idle"	0
}
$Animation "a_hover" "copter_anims\hover.smd" {
	fps 15
	loop
	
}

$Animation "a_fly_N" "copter_anims\fly_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_fly_NW" "copter_anims\fly_NW.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_fly_NE" "copter_anims\fly_NE.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$Animation "a_fly_W" "copter_anims\fly_W.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$Animation "a_fly_E" "copter_anims\fly_E.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$Animation "a_fly_S" "copter_anims\fly_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_fly_SW" "copter_anims\fly_SW.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_fly_SE" "copter_anims\fly_SE.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$sequence "rotors_layer" {
	"a_rotors"
	fadein 0.2
	fadeout 0.2
	fps 120
	delta
	loop
	weightlist	"weights_rotors"

}


$Sequence "fly_slow" {
	"a_fly_NW"
	"a_fly_N"
	"a_fly_NE"
	"a_fly_W"
	"a_hover"
	"a_fly_E"
	"a_fly_SW"
	"a_fly_S"
	"a_fly_SE"
	activity "ACT_WALK" 1	
	blend "fly_y" -1 1
	blend "fly_x" 1 -1
	snap
	loop
	fps 30
	addlayer	"rotors_layer"
	node "movement"
	walkframe 145 LX LY
}

$sequence "idle" {
	"copter_anims\reference.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "hover" {
	"copter_anims\hover.smd"
	activity "ACT_HOVER" 1
	addlayer	"rotors_layer"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$Sequence "reference" {
	"Cargo_Copter.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Cargo_Copter.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionmodel "Cargo_Copter.smd" {

	$mass 1250.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
}

