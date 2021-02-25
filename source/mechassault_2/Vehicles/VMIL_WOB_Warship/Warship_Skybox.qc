// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_WOB_Warship_skybox.mdl"
//$attachment "Cannon" "Cann_end" 2.00 20.00 -0.50 rotate 0 90 180
$scale 2
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "HOB Warship FFFF.smd"
}
$BodyGroup "Turret"
{
	studio "HOB Dropship Bays.smd"
	blank
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_WOB_Warship\"

$texturegroup "skinfamilies"
{
	{ "Vmil_Dropship" }
	{ "Vmil_Dropship_Alt" }
}

// RAGDOLL


$Sequence "reference" {
	"HOB Warship FFFF.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"HOB Warship FFFF.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION

$collisionmodel "HOB Warship FFFF.smd"
{
	$mass 9000000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
