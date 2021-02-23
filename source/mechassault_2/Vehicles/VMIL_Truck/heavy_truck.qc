// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_heavy_truck.mdl"
$scale 45
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Heavy Utility Truck.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Truck\"


// RAGDOLL


$Sequence "reference" {
	"Heavy Utility Truck.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Heavy Utility Truck.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION

$collisionmodel "Heavy Utility Truck.smd"
{
	$mass 4250
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
