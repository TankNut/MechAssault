// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_goblin.mdl"
$attachment "MG_Right" "Cann" 21.00 0.00 32.00 rotate -90 0 0
$attachment "MG_Left" "Cann"  -21.00 0.00 32.00 rotate -90 0 0
$attachment "Rocket" "Cann" 0.00 10.00 20.00 rotate -90 90 0
$scale 42
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Goblin Hull.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Goblin\"


// RAGDOLL


$Sequence "reference" {
	"Goblin Hull.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Goblin Hull.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "goblin_physics.smd" {

	$mass 3000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"
	$jointconstrain "turr" x limit 0.00 0.00 0.00
	$jointconstrain "turr" y limit -180.00 180.00 0.00
	$jointconstrain "turr" z limit 0.00 0.00 0.00

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
