// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_carrier.mdl"
$attachment "Cann Left" "Cann" -298.00 235.00 50.00 rotate -0 90 180
$attachment "Cann Right" "Cann"  220.00 235.00 50.00 rotate -0 90 180
$scale 25
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Aircraft Carrier Base.smd"
}
$BodyGroup "Turret"
{
	studio "Carrier Turret Base.smd"
	blank
}
$BodyGroup "Lights"
{
	studio "Turret Lights.smd"
	blank
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_Carrier\"


$PoseParameter "aim_pitch" -45 20 0
$PoseParameter "aim_yaw" -180 180 0

$weightlist weights_turret {

"Turr" 1
"Cann" 0
"Hull"	0

}


$weightlist weights_cannon {

"Turr" 0
"Cann" 1
"Hull"	0

}

$Animation "a_idle" "carrier_anims\reference.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "carrier_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_mid_left" "carrier_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_mid_right" "carrier_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_turret"
}
$Animation "aim_up_center" "carrier_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_up_left" "carrier_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_up_right" "carrier_anims\aim_up_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_center" "carrier_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_left" "carrier_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}
$Animation "aim_down_right" "carrier_anims\aim_down_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
	weightlist	"weights_cannon"
}



// RAGDOLL


$sequence "aimlayer_turret_yaw" {
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	blend "aim_yaw" -180 180
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_turret"
}

$sequence "aimlayer_turret_pitch" {
	"aim_up_center" "aim_mid_center"  "aim_down_center"
	blend "aim_pitch" -45 20
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
	weightlist	"weights_cannon"
}

$Sequence "death" {
	"carrier_anims\death.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 15
	walkframe 145 LX LY
}


$sequence "idle" {
	"carrier_anims\reference.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_turret_yaw"
	addlayer	"aimlayer_turret_pitch"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$Sequence "reference" {
	"Aircraft Carrier Base.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Aircraft Carrier Base.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION
$collisionjoints "Carrier_physics.smd" {

	$mass 2000000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Hull"

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
