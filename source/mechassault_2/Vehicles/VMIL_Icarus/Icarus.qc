// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_Icarus.mdl"
$scale 1
$attachment "Thruster_1" "Hull" 200.00 -950.00 220.00 rotate 0 -90 0
$attachment "Thruster_2" "Hull" -200.00 -950.00 220.00 rotate -0 -90 0
$attachment "Thruster_3" "Hull" -200.00 -950.00 -250.00 rotate -0 -90 0
$attachment "Thruster_4" "Hull" 200.00 -950.00 -250.00 rotate -0 -90 0
$scale 25
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Icarus_Body.smd"
}
$BodyGroup "Details"
{
	studio "Icarus_Details.smd"
	blank
}
$BodyGroup "Flaps"
{
	studio "Icarus_Flaps.smd"
	blank
}
$BodyGroup "Legs"
{
	studio "Icarus_Legs.smd"
	blank
}
$BodyGroup "Lights"
{
	studio "Icarus_lights.smd"
	blank
}
$BodyGroup "Lights Interior"
{
	studio "Icarus_Lights_Interior.smd"
	blank
}
$BodyGroup "Misc"
{
	studio "Icarus_Misc.smd"
	blank
}
$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Icarus\"





// RAGDOLL
$Animation "a_idle" "icarus_anims\reference.smd" {
	fps 15
	loop
}
$Animation "a_hover" "icarus_anims\idle_flight.smd" {
	fps 15
	loop
	
}

$sequence "power_up" {
	"icarus_anims\takeoff.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "power_down" {
	"icarus_anims\land.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "power_down_pose" {
	"icarus_anims\reference.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "idle" {
	"icarus_anims\reference.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "hover" {
	"icarus_anims\idle_flight.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$Sequence "reference" {
	"Icarus_Body.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Icarus_Body.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "Icarus_physics.smd" {

	$mass 5500000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Root"


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
		"rootname"		"Root"
		"totalmass"		"90.000000"
//		"jointmerge"		"Root,Hull"
//		"jointmerge"		"Hull,Turret"
	}
}

