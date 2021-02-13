// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_rommel.mdl"
$attachment "Cann Right" "Cann Right_end" 0.00 112.00 -0.50 rotate 0 90 180
$attachment "Cann Left" "Cann Left_end"  0.00 112.00 -0.50 rotate 0 90 180
$attachment "Machinegun" "Turret" -49.00 38.00 9.50 rotate -90 90 0
$scale 30
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Rommel Tank Hull.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Rommel\WOB\"

$texturegroup "skinfamilies"
{
	{ "Vmil_RommelMk2_turret_WOB_Spclr"      	 "Vmil_RommelMK2_WOB_Spclr"			"Vmil_RommelMK2_WOB_Emiss"}
	{ "Vmil_RommelMk2_turret_Kuritan" 		"Vmil_RommelMK2_Kuritan"		"Vmil_RommelMK2_Emiss_Kuritan"}
	{ "Vmil_RommelMk2_turret_WOB_Spclr_MP" 		"Vmil_RommelMK2_WOB_Spclr_MP"		"Vmil_RommelMK2_WOB_Emiss_MP"}
}

// RAGDOLL


$Sequence "reference" {
	"Rommel Tank Hull.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Rommel Tank Hull.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "rommel_physics.smd" {

	$mass 5000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"
	$jointconstrain "turret" x limit 0.00 0.00 0.00
	$jointconstrain "turret" y limit -180.00 180.00 0.00
	$jointconstrain "turret" z limit 0.00 0.00 0.00

	$jointconstrain "cann base" x limit -25.00 10.00 0.00
	$jointconstrain "cann base" y limit 0.00 0.00 0.00
	$jointconstrain "cann base" z limit 0.00 0.00 0.00

	$jointcollide Cann Base turret
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
