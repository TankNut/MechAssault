// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_truck.mdl"
$scale 40
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Utility Truck.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Truck\"


// RAGDOLL


$Sequence "reference" {
	"Utility Truck.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Utility Truck.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION

$collisionmodel "Utility Truck.smd"
{
	$mass 3000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
