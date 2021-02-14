// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_VTOL.mdl"
$attachment "Turret" "Hull" -1.00 -39.00 200.50 rotate -90 -0 0
$attachment "Contrail_Left" "Wing Left" 100.00 45.00 -5.00 rotate 0 90 0
$attachment "Contrail_Right" "Wing Right" -100.00 45.00 8.00 rotate -0 90 0
$attachment "Light_Back" "Hull" 3.00 125.00 -260.00 rotate -0 0 0
$scale 30
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "VTOL Body.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_VTOL\"

$texturegroup "skinfamilies"
{
	{ "VMIL_VTOL"}
	{ "VMIL_VTOL_MP"}
}

// RAGDOLL


$Sequence "reference" {
	"VTOL Body.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"VTOL Body.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "VTOL_physics.smd" {

	$mass 1000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"
	$jointconstrain "wing left" x limit -180.00 180.00 0.00
	$jointconstrain "wing left" y limit 0.00 0.00 0.00
	$jointconstrain "wing left" z limit 0.00 0.00 0.00

	$jointconstrain "wing right" x limit -180.00 180.00 0.00
	$jointconstrain "wing right" y limit 0.00 0.00 0.00
	$jointconstrain "wing right" z limit 0.00 0.00 0.00
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
