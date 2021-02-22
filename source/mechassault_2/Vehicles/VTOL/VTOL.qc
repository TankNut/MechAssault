// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/vmil_VTOL.mdl"
$attachment "Turret" "Hull" -1.00 -39.00 200.50 rotate -90 -0 0
$attachment "Contrail_Left" "Wing Left" 100.00 45.00 -5.00 rotate 0 90 0
$attachment "Contrail_Right" "Wing Right" -100.00 45.00 8.00 rotate -0 90 0
$attachment "Light_Back" "Hull" 3.00 125.00 -260.00 rotate -0 0 0
$attachment "battlearmor_attach_1" "Hull" 52.00 -25.00 14.00 rotate 0 -90 0
$attachment "battlearmor_attach_2" "Hull" -52.00 -25.00 14.00 rotate 0 -90 0
$attachment "airboat_seat_bone" "airboat_seat_bone" 0.00 0.00 0.00 rotate 0 0 -90
$bonemerge "airboat_seat_bone"
$scale 30
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "Vtol Mesh.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\Military\VMIL_VTOL\"

$texturegroup "skinfamilies"
{
	{ "VMIL_VTOL"		"Emit"}
	{ "VMIL_VTOL_WOB"	"Emit_WOB"}
	{ "VMIL_VTOL_MP"	"Emit_MP"}
}

// RAGDOLL
$Animation "a_idle" "vtol_anims\reference.smd" {
	fps 15
	loop
}
$Animation "a_hover" "vtol_anims\hover.smd" {
	fps 15
	loop
}
$Animation "a_fly_N" "vtol_anims\fly_N.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_fly_NW" "vtol_anims\fly_NW.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}

$Animation "a_fly_NE" "vtol_anims\fly_NE.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$Animation "a_fly_W" "vtol_anims\fly_W.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$Animation "a_fly_E" "vtol_anims\fly_E.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$Animation "a_fly_S" "vtol_anims\fly_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_fly_SW" "vtol_anims\fly_SW.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$Animation "a_fly_SE" "vtol_anims\fly_SE.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$Animation "a_open" "vtol_anims\hatch_open.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_close" "vtol_anims\hatch_close.smd" {
	fps 30
	subtract "a_idle" 0
}

$Sequence "move_slow" {
	"a_fly_NW"
	"a_fly_N"
	"a_fly_NE"
	"a_fly_W"
	"a_hover"
	"a_fly_E"
	"a_fly_SW"
	"a_fly_S"
	"a_fly_SE"
	activity "ACT_WALK" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
}

$sequence "idle" {
	"vtol_anims\reference.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "hover" {
	"vtol_anims\hover.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"vtol_anims\hatch_close.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down" {
	"vtol_anims\hatch_open.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down_pose" {
	"vtol_anims\hatch_opened.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

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
