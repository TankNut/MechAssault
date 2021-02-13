// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_APC.mdl"
//$attachment "Cannon" "Cann_end" 2.00 20.00 -0.50 rotate 0 90 180
$scale 30
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "APC_Hull.smd"
}
$BodyGroup "Turret"
{
	studio "APC_Turret.smd"
	studio "APC_AtCnn.smd"
	blank
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_APC\"

$texturegroup "skinfamilies"
{
	{ "VMil_APC"		"VMil_APC_Turret_Laser"}
	{ "VMil_APC_friendly"	"VMil_APC_Turret_Laser"}
	{ "VMil_APC_red"		"VMil_APC_Turret_Laser_Red"}
}

// RAGDOLL


$Sequence "reference" {
	"APC_Hull.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"APC_Hull.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION

$collisionmodel "APC_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
