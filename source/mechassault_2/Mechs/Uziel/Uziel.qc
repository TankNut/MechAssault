// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/uziel.mdl"
$attachment "pulse_laser_R1" "joint_ruarm" -93.00 -138.00 -19.00 rotate -0 -90 0
$attachment "pulse_laser_R2" "joint_ruarm" -83.00 -60.00 -52.50 rotate -0 -90 0
$attachment "pulse_laser_L1" "joint_luarm" 90.00 -138.00 -19.00 rotate -0 -90 0
$attachment "pulse_laser_L2" "joint_luarm" 83.00 -60.00 -52.50 rotate -0 -90 0
$attachment "machinegun_R" "joint_torsoabove" 53.00 -70.00 84.50 rotate 0 -90 0
$attachment "machinegun_L" "joint_torsoabove" -53.00 -70.00 84.50 rotate 0 -90 0
$attachment "rocket_pod" "joint_torsoabove" 0.00 -45.00 106.50 rotate -0 -90 0
$attachment "jumpjets_main" "joint_torso" 0.00 98.00 5.00 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 45.00 118.00 52.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -45.00 118.00 52.00 rotate 30 140 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 135.00 45.00 rotate -0 -90 0
$scale 47
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "Uziel Lower.smd"
}
$BodyGroup "Torso"
{
	studio "Uziel Upper.smd"
}	
$BodyGroup "JumpJets"
{
	studio "Uziel Jump Jets.smd"
}	
$BodyGroup "Sensor"
{
	studio "Uziel Sensor.smd"
}	


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\uziel\"

$texturegroup "skinfamilies"
{
	{ "uziel"      	 "Uziel_Guns"			"Reac_Glow"}
	{ "belial" "belial_Guns"	"Reac_Glow"}
	{ "uziel_MP" "Uziel_Guns_MP"	"Reac_Glow_MP"}
	{ "belial_MP" "belial_Guns_MP"	"Reac_Glow_MP"}
}

$weightlist weights_proportions {

"joint_ROOT" 0
"joint_hipbelow" 1
"joint_ruleg" 1
"joint_luleg" 1

}

$weightlist weights_damage_arms {

"joint_torso" 0
"joint_ruarm" 1
"joint_luarm" 1

}

$weightlist weights_damage_upper {

"joint_ROOT" 0
"joint_torso" 1
"joint_hipabove" 1
"joint_ruarm" 1
"joint_luarm" 1
}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL


$Animation "a_idle" "uzi_anims\uzi_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "uzi_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "uzi_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "uzi_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "uzi_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "uzi_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "uzi_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "uzi_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "uzi_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "uzi_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "uzi_anims\uzi_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "uzi_anims\uzi_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "uzi_anims\uzi_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "uzi_anims\uzi_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "uzi_anims\uzi_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "uzi_anims\uzi_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "uzi_anims\uzi_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "uzi_anims\uzi_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0

$sequence "aimlayer_generic" {
	"aim_up_right" "aim_up_center"  "aim_up_left"
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	"aim_down_right" "aim_down_center"  "aim_down_left"
	blend "aim_yaw" -180 180
	blend "aim_pitch" -0.1 0.1
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$Sequence "walk" {
	"a_walk_NW"
	"a_walk_N"
	"a_walk_NE"
	"a_walk_W"
	"a_idle"
	"a_walk_E"
	"a_walk_SW"
	"a_walk_S"
	"a_walk_SE"
	activity "ACT_WALK" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 31 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"uzi_anims\uzi_standrgimppose2.smd"
	"a_walk_limp_E"
	"a_walk_limp_SW"
	"a_walk_limp_S"
	"a_walk_limp_SE"
	activity "ACT_WALK_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 23 "MA2_Mech.Step" }
}

$Sequence "run" {
	"a_run_NW"
	"a_run_N"
	"a_run_NE"
	"a_run_W"
	"a_idle"
	"a_run_E"
	"a_run_SW"
	"a_run_S"
	"a_run_SE"
	activity "ACT_RUN" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 14 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"uzi_anims\uzi_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"uzi_anims\uzi_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"uzi_anims\uzi_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"uzi_anims\uzi_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"uzi_anims\uzi_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 21 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"uzi_anims\uzi_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 21 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
}

$sequence "hit_back" {
	"a_hit_back"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
//	weightlist	"weights_damage_upper"
}

$sequence "hit_front" {
	"a_hit_front"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
//	weightlist	"weights_damage_upper"
}


$sequence "jump" {
	"uzi_anims\uzi_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"uzi_anims\uzi_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"uzi_anims\uzi_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"uzi_anims\uzi_standrgimppose.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"uzi_anims\uzi_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"uzi_anims\uzi_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"uzi_anims\uzi_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Uziel Upper.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Uziel Upper.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "uziel_physics.smd" {

	$mass 60000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_luleg" x limit -45.00 40.00 0.00
	$jointconstrain "joint_luleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_luleg" z limit -5.00 5.00 0.00

	$jointconstrain "joint_lmleg" x limit -45.00 40.00 0.00
	$jointconstrain "joint_lmleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lmleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ldleg" x limit -50.00 50.00 0.00
	$jointconstrain "joint_ldleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ldleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ruleg" x limit -45.00 40.00 0.00
	$jointconstrain "joint_ruleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_ruleg" z limit -5.00 5.00 0.00

	$jointconstrain "joint_rmleg" x limit -45.00 40.00 0.00
	$jointconstrain "joint_rmleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rmleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rdleg" x limit -50.00 50.00 0.00
	$jointconstrain "joint_rdleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rdleg" z limit -85.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -45.00 35.00 0.00
	$jointconstrain "joint_rankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" z limit 0.00 0.00 0.00

	$jointconstrain "joint_torso" x limit -15.00 15.00 0.00
	$jointconstrain "joint_torso" y limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" z limit -180.00 180.00 0.00

	$jointconstrain "joint_lgun" x limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" z limit -88.00 48.00 0.00

	$jointconstrain "joint_rgun" x limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" z limit -88.00 48.00 0.00

	$jointconstrain "joint_lankle" x limit -35.00 45.00 0.00
	$jointconstrain "joint_lankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lankle" z limit 0.00 0.00 0.00

	$jointcollide joint_rgun joint_ruleg
	$jointcollide joint_rgun joint_luleg
	$jointcollide joint_lgun joint_ruleg
	$jointcollide joint_lgun joint_luleg
	$jointcollide joint_rankle joint_ldleg
	$jointcollide joint_lankle joint_rdleg
	$jointcollide joint_lankle joint_rankle
	$jointcollide joint_rdleg joint_ldleg
	$jointcollide joint_ruleg joint_luleg
	$jointcollide joint_rgun joint_torso
	$jointcollide joint_lgun joint_torso
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
		"rootname"		"joint_ROOT"
		"totalmass"		"90.000000"
//		"jointmerge"		"joint_ROOT,B"
//		"jointmerge"		"joint_ROOT,joint_torso"
	}
}

$scale 0.9


