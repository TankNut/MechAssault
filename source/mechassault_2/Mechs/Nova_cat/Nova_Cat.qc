// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/nova_cat.mdl"
$attachment "pulse_laser_R1" "joint_ruarm" -38.00 -152.00 -23.50 rotate 0 -90 0
$attachment "pulse_laser_R2" "joint_ruarm" -52.00 -152.00 -50.50 rotate -0 -90 0
$attachment "machinegun_1" "joint_luarm" 19.00 -114.00 -28.50 rotate 0 -90 0
$attachment "machinegun_2" "joint_luarm" 48.00 -114.00 -12.50 rotate -0 -90 0
$attachment "machinegun_3" "joint_luarm" 48.00 -114.00 -44.50 rotate -0 -90 0
$scale 35
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "Nova Cat Lower Half.smd"
}
$BodyGroup "Torso"
{
	studio "Nova Cat Upper Half.smd"
}	


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\nova_cat\"

$texturegroup "skinfamilies"
{
	{ "Nova_Cat"      	 "Reac_Glow"		"Visor"}
	{ "Wendigo" 		"Reac_Glow_2"		"Visor_2"}
	{ "Nova_Cat_WOB" 	"Reac_Glow"			"Visor"}
	{ "Nova_Cat_MP" 	"Reac_GlowMP"		"VisorMP"}
	{ "Wendigo_MP" 		"Reac_GlowMP"		"VisorMP"}
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


$Animation "a_idle" "nova_anims\nov_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "nova_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "nova_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "nova_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "nova_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "nova_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "nova_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "nova_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "nova_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "nova_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "nova_anims\nov_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "nova_anims\nov_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "nova_anims\nov_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "nova_anims\nov_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "nova_anims\nov_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "nova_anims\nov_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "nova_anims\nov_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "nova_anims\nov_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "nova_anims\nov_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "nova_anims\nov_lgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "nova_anims\nov_lgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "nova_anims\nov_lgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "nova_anims\nov_lgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "nova_anims\nov_lgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "nova_anims\nov_lgimp.smd" {
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
	{ event AE_CL_PLAYSOUND 18 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 39 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"nova_anims\nov_standrgimppose.smd"
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
	{ event AE_CL_PLAYSOUND 17 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 35 "MA2_Mech.Step" }
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
	{ event AE_CL_PLAYSOUND 5 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 23 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"nova_anims\nov_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"nova_anims\nov_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"nova_anims\nov_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"nova_anims\nov_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"nova_anims\nov_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 33 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 54 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"nova_anims\nov_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 33 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 54 "MA2_Mech.Step" }
}

$sequence "hit_back" {
	"a_hit_back"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
//	weightlist	"weights_damage_upper"
}

$sequence "hit_front" {
	"a_hit_front"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 145 LX LY
//	weightlist	"weights_damage_upper"
}


$sequence "jump" {
	"nova_anims\nov_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"nova_anims\nov_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 145 LX LY
}

$sequence "idle" {
	"nova_anims\nov_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"nova_anims\nov_standrgimppose2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"nova_anims\nov_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 25 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 37 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"nova_anims\nov_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 10 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"nova_anims\nov_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Nova Cat Upper Half.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Nova Cat Upper Half.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "novacat_physics.smd" {

	$mass 70000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_luleg" x limit -40.00 65.00 0.00
	$jointconstrain "joint_luleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_luleg" z limit -55.00 32.00 0.00

	$jointconstrain "joint_lmleg" x limit -35.00 35.00 0.00
	$jointconstrain "joint_lmleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lmleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ruleg" x limit -40.00 65.00 0.00
	$jointconstrain "joint_ruleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_ruleg" z limit -55.00 32.00 0.00

	$jointconstrain "joint_rmleg" x limit -35.00 35.00 0.00
	$jointconstrain "joint_rmleg" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rmleg" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -35.00 45.00 0.00
	$jointconstrain "joint_rankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" z limit 0.00 0.00 0.00

	$jointconstrain "joint_torso" x limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" y limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" z limit -180.00 180.00 0.00

	$jointconstrain "joint_luarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" z limit -88.00 48.00 0.00

	$jointconstrain "joint_ruarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" z limit -88.00 48.00 0.00

	$jointconstrain "joint_lankle" x limit -35.00 45.00 0.00
	$jointconstrain "joint_lankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lankle" z limit 0.00 0.00 0.00

	$jointcollide joint_rgunabove joint_ruleg
	$jointcollide joint_rgunabove joint_luleg
	$jointcollide joint_lgunabove joint_ruleg
	$jointcollide joint_lgunabove joint_luleg
	$jointcollide joint_rankle joint_ldleg
	$jointcollide joint_lankle joint_rdleg
	$jointcollide joint_lankle joint_rankle
	$jointcollide joint_rdleg joint_ldleg
	$jointcollide joint_ruleg joint_luleg
	$jointcollide joint_rgunabove joint_torso
	$jointcollide joint_lgunabove joint_torso
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

// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 2 "joint_ROOT"	   -47.35  -53.68  -21.85    45.50   63.63   35.55
$hbox 3 "joint_torso"	   -78.53  -68.83    0.00    77.20   86.15  134.39
$hbox 3 "joint_torsoabove"	   -77.00    0.00    0.00    77.00   15.75   70.00
$hbox 4 "joint_luarm"	    -4.43 -110.95  -64.06    83.88   50.82   75.62
$hbox 5 "joint_ruarm"	   -86.28 -146.89  -81.46     2.02   50.47   74.01
$hbox 7 "joint_ruleg"	   -37.52  -59.41  -85.37    20.88   33.22   33.66
$hbox 7 "joint_rmleg"	   -23.43  -32.19  -60.04    25.20   68.21   12.51
$hbox 7 "joint_rdleg"	   -36.96  -67.13  -57.62    34.35   22.05   37.01
$hbox 7 "joint_rankle"	   -38.65  -63.75  -22.47    36.01   25.32   11.42
$hbox 6 "joint_luleg"	   -20.89  -59.41  -85.36    37.50   33.22   33.66
$hbox 6 "joint_lmleg"	   -25.21  -32.17  -60.02    23.42   68.22   12.52
$hbox 6 "joint_ldleg"	   -34.27  -67.12  -57.63    37.04   22.06   37.01
$hbox 6 "joint_lankle"	   -35.96  -63.78  -22.44    38.70   25.29   11.45

// .qc block generated by HLMV ends.


