// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_manticore.mdl"
$attachment "Cannon" "Cann_end" 2.00 20.00 -0.50 rotate 0 90 180
$attachment "MissilePod" "Turret" 2.00 55.00 -12.50 rotate -80 90 0
$scale 30
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Manticore Hull.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Manticore\"

// RAGDOLL


$Sequence "reference" {
	"Manticore Hull.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Manticore Hull.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "Manticore_physics.smd" {

	$mass 5000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"
	$jointconstrain "turret" x limit 0.00 0.00 0.00
	$jointconstrain "turret" y limit -180.00 180.00 0.00
	$jointconstrain "turret" z limit 0.00 0.00 0.00

	$jointconstrain "cann" x limit 0.00 0.00 0.00
	$jointconstrain "cann" y limit 0.00 0.00 0.00
	$jointconstrain "cann" z limit 0.00 0.00 0.00

	$jointcollide cann turret
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
