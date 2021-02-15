// Created by Crowbar 0.56

$modelname "mechassault_2/salvage/ballistic.mdl"
//$attachment "Cannon" "Cann_end" 2.00 20.00 -0.50 rotate 0 90 180
$scale 30
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "MA2 Salvage Ballistic.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\salvage\"

// RAGDOLL


$Sequence "reference" {
	"MA2 Salvage Ballistic.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"MA2 Salvage Ballistic.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION

$collisionmodel "MA2 Salvage Ballistic.smd"
{
	$mass 250
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
