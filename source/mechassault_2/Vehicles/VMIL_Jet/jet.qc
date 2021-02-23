// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_jet.mdl"
$attachment "Bomb" "Hull" 0.00 -35.00 -140.00 rotate -0 -90 0
$attachment "Missile_R" "Hull" -275.00 -58.00 90.00 rotate -0 -90 0
$attachment "Missile_L" "Hull" 275.00 -58.00 90.00 rotate -0 -90 0

$scale 45
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "WOB Jet.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Jet\"

$texturegroup "skinfamilies"
{
	{ "WOB_Jet"}
	{ "WOB_Jet_MP"}
}

// RAGDOLL


$Sequence "reference" {
	"WOB Jet.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"WOB Jet.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION

$collisionmodel "WOB Jet.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
