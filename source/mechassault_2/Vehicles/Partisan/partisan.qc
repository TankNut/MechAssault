// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_partisan.mdl"
//$attachment "Cannon" "Cann_end" 2.00 20.00 -0.50 rotate 0 90 180
$scale 20
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Vmil Partisan Tank Hull.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_partisan\"

// RAGDOLL


$Sequence "reference" {
	"Vmil Partisan Tank Hull.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Vmil Partisan Tank Hull.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "partisan_physics.smd" {

	$mass 5000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"
	$jointconstrain "Turr" x limit 0.00 0.00 0.00
	$jointconstrain "Turr" y limit -180.00 180.00 0.00
	$jointconstrain "Turr" z limit 0.00 0.00 0.00

	$jointconstrain "cann" x limit 0.00 0.00 0.00
	$jointconstrain "cann" y limit 0.00 0.00 0.00
	$jointconstrain "cann" z limit 0.00 0.00 0.00

	$jointcollide cann Turr
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
//		"jointmerge"		"Hull,Turr"
	}
}
