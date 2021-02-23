// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_Heli.mdl"
$scale 1.15
$attachment "Guns_L" "Hull" 59.00 -35.00 67.00 rotate -90 -0 0
$attachment "Guns_R" "Hull" -59.00 -35.00 67.00 rotate -90 -0 0
$scale 40
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "WOB Chopper.smd"
}
$BodyGroup "Rotors"
{
	studio "WOB ChopperBladelet.smd"
}
$BodyGroup "Landing Gear"
{
	studio "WOB Chopper_Landing_Gear.smd"
	blank
}
$BodyGroup "Weapons"
{
	studio "WOB Chopper_Weapons.smd"
	blank
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Heli\"

$texturegroup "skinfamilies"
{
	{ "HeloB"}
	{ "HeloB_MP"}
}

$weightlist weights_rotors {

"Rotor" 1
"Hull"	0
}

// RAGDOLL
$Animation "a_idle" "heli_anims\reference.smd" {
	fps 15
	loop
}
$Animation "a_hover" "heli_anims\hover.smd" {
	fps 15
	loop
	
}
$Animation "a_rotors" "heli_anims\rotors_spin.smd" {
	fps 60
	loop
	subtract	"a_idle"	0
	weightlist	"weights_rotors"
}
$Animation "a_fly_N" "heli_anims\fly_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_fly_NW" "heli_anims\fly_NW.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_fly_NE" "heli_anims\fly_NE.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$Animation "a_fly_W" "heli_anims\fly_W.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$Animation "a_fly_E" "heli_anims\fly_E.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$Animation "a_fly_S" "heli_anims\fly_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_fly_SW" "heli_anims\fly_SW.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_fly_SE" "heli_anims\fly_SE.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$sequence "rotors_layer" {
	"a_rotors"
	fadein 0.2
	fadeout 0.2
	fps 60
	delta
	loop
	weightlist	"weights_rotors"

}

$Sequence "move_slow" {
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
	addlayer	"rotors_layer"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 30
	node "movement"
	walkframe 145 LX LY
}

$sequence "idle" {
	"heli_anims\reference.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "hover" {
	"heli_anims\hover.smd"
	activity "ACT_HOVER" 1
	addlayer	"rotors_layer"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$Sequence "reference" {
	"WOB Chopper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"WOB Chopper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionmodel "WOB Chopper.smd" {

	$mass 1250.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
}

