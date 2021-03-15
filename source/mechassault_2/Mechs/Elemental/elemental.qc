// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/elemental.mdl"
$attachment "JumpJets_main" "joint_torso" 0.50 11.00 14.00 rotate 90 -90 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0

$scale 1.25
$attachment "Missile_R" "joint_missilepod_R" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "Missile_L" "joint_missilepod_L" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "Laser" "joint_rgun" 0.50 -4.00 -28.00 rotate 90 -90 0
$scale 40
//$origin 0 0 -38 0

$BodyGroup "Legs"
{
	studio "elemental.smd"
}




$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\elemental\"

$texturegroup "skinfamilies"
{
	{ "elemental"          }
	{ "elemental_MP" }
}

// RAGDOLL


$weightlist weights_proportions {

"joint_ROOT" 0
"joint_hipbelow" 1
"joint_ruleg" 1
"joint_luleg" 1

}


$weightlist weights_damage_upper {

"joint_ROOT" 0
"joint_torso" 1
"joint_hipabove" 1
}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -45 45 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL



$Animation "a_idle" "pa_anims\pa_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "pa_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "pa_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "pa_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "pa_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "pa_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "pa_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_dpa_center" "pa_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_dpa_left" "pa_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_dpa_right" "pa_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "pa_anims\pa_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "pa_anims\pa_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "pa_anims\pa_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_claw_attack" "pa_anims\pa_clawattack.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "pa_anims\pa_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "pa_anims\pa_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "pa_anims\pa_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "pa_anims\pa_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "pa_anims\pa_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 0
$Animation "a_walk_S" "pa_anims\pa_walk_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_SW" "pa_anims\pa_walk_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_SE" "pa_anims\pa_walk_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "pa_anims\pa_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "pa_anims\pa_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "pa_anims\pa_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "pa_anims\pa_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "pa_anims\pa_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 0
$Animation "a_run_S" "pa_anims\pa_run_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 45
$Animation "a_run_SW" "pa_anims\pa_run_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_SE" "pa_anims\pa_run_S.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_fire" "pa_anims\fire.smd" {
	fps 30
	subtract "a_idle" 0
	weightlist	"weights_damage_upper"
}
$Animation "a_fire_mortar" "pa_anims\fire_mortar.smd" {
	fps 30
	subtract "a_idle" 0
	weightlist	"weights_damage_upper"
}

$sequence "aimlayer_generic" {
	"aim_up_right" "aim_up_center"  "aim_up_left"
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	"aim_dpa_right" "aim_dpa_center"  "aim_dpa_left"
	blend "aim_yaw" -45 45
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
	{ event AE_CL_PLAYSOUND 2 "MA2_BA.Step" }
	{ event AE_CL_PLAYSOUND 16 "MA2_BA.Step" }
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
	{ event AE_CL_PLAYSOUND 2 "MA2_BA.Step" }
	{ event AE_CL_PLAYSOUND 14 "MA2_BA.Step" }
}

$Sequence "fall_forward" {
	"pa_anims\pa_hitground.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"pa_anims\pa_hitground.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"pa_anims\pa_hitground.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"pa_anims\pa_hitground.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"pa_anims\pa_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 30 "MA2_BA.Step" }
	{ event AE_CL_PLAYSOUND 41 "MA2_BA.Step" }
}

$Sequence "getup_right" {
	"pa_anims\pa_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 30 "MA2_BA.Step" }
	{ event AE_CL_PLAYSOUND 41 "MA2_BA.Step" }
}

$sequence "attack_claw" {
	"a_claw_attack"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	weightlist	"weights_damage_upper"
}

$sequence "fire" {
	"a_fire"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	weightlist	"weights_damage_upper"

}

$sequence "fire_mortar" {
	"a_fire_mortar"
	activity "ACT_RANGE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	weightlist	"weights_damage_upper"

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

$sequence "vtol_grab" {
	"pa_anims\pa_vtolgrab.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "vtol_release" {
	"pa_anims\pa_vtolrelease.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "vtol_grab_idle" {
	"pa_anims\pa_vtolgrabidle.smd"
	activity "ACT_DEPLOY_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "mech_grab" {
	"pa_anims\pa_clawgrab.smd"
	activity "ACT_OVERLAY_SHIELD_ATTACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "mech_grab_idle" {
	"pa_anims\pa_clawgrabidle.smd"
	activity "ACT_OVERLAY_SHIELD_UP_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "tank_grab" {
	"pa_anims\pa_tankgrab.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "tank_grab_idle" {
	"pa_anims\pa_tankgrabidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$origin 0 0 5 0
$sequence "jump" {
	"pa_anims\pa_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer	"aimlayer_generic"
	loop
	walkframe 145 LX LY
}
$origin 0 0 0 0
$sequence "land" {
//	"pa_anims\pa_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"pa_anims\pa_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"pa_anims\pa_base.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$Sequence "reference" {
	"elemental.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"elemental.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}



$collisionjoints "elemental_physics.smd"
{
	$mass 1500
	$inertia 10
	$damping 0.5
	$rotdamping 1.5
	$rootbone "joint_ROOT"


	$jointconstrain "joint_torso" x limit -25 25 0
	$jointconstrain "joint_torso" y limit -16 16 0
	$jointconstrain "joint_torso" z limit -8 23 0


	$jointconstrain "joint_luarm" x limit -50 40 0
	$jointconstrain "joint_luarm" y limit -30 10 0
	$jointconstrain "joint_luarm" z limit -50 35 0

	$jointconstrain "joint_lgun" x limit -38 22 0
	$jointconstrain "joint_lgun" y limit 0 0 0
	$jointconstrain "joint_lgun" z limit -75 35 0

	$jointconstrain "joint_ruarm" x limit -40 50 0
	$jointconstrain "joint_ruarm" y limit -10 30 0
	$jointconstrain "joint_ruarm" z limit -50 35 0

	$jointconstrain "joint_rgun" x limit -22 38 0
	$jointconstrain "joint_rgun" y limit 0 0 0
	$jointconstrain "joint_rgun" z limit -75 35 0

	$jointconstrain "joint_ruleg" x limit -10 10 0
	$jointconstrain "joint_ruleg" y limit -10 14 0
	$jointconstrain "joint_ruleg" z limit -80 10 0

	$jointconstrain "joint_rdleg" x limit 0 0 0
	$jointconstrain "joint_rdleg" y limit -8 8 0
	$jointconstrain "joint_rdleg" z limit -8 97 0

	$jointconstrain "joint_head" x limit -50 50 0
	$jointconstrain "joint_head" y limit -20 20 0
	$jointconstrain "joint_head" z limit -17 26 0

	$jointconstrain "joint_luleg" x limit -10 10 0
	$jointconstrain "joint_luleg" y limit -14 10 0
	$jointconstrain "joint_luleg" z limit -80 10 0

	$jointconstrain "joint_ldleg" x limit 0 0 0
	$jointconstrain "joint_ldleg" y limit -8 8 0
	$jointconstrain "joint_ldleg" z limit -8 97 0

	$jointconstrain "joint_lankle" x limit -6 6 0
	$jointconstrain "joint_lankle" y limit -3 2 0
	$jointconstrain "joint_lankle" z limit -12 15 0

	$jointconstrain "joint_rankle" x limit -6 6 0
	$jointconstrain "joint_rankle" y limit -2 3 0
	$jointconstrain "joint_rankle" z limit -12 15 0
}

$scale 0.9

// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 2 "joint_ROOT"	    -9.52   -9.55   -6.23    10.34    7.02    8.62
$hbox 2 "joint_torso"	   -18.90  -12.71    0.00    19.71   12.68   30.95
$hbox 2 "joint_torsoabove"	   -12.38   -3.82    0.00    13.40    0.36   26.74
$hbox 5 "joint_ruarm"	    -4.97   -5.94  -17.06     5.04    4.14    3.75
$hbox 5 "joint_rgun"	    -6.00   -6.66  -28.47     6.47    6.81    6.13
$hbox 4 "joint_luarm"	    -4.20   -6.05  -14.98     5.80    4.03    3.39
$hbox 4 "joint_lgun"	    -4.18   -7.37  -17.99     8.84    3.69    0.42
$hbox 4 "joint_thumb"	    -3.03   -3.71  -11.16     4.20    2.87    2.37
$hbox 4 "joint_finger"	    -2.13   -7.40  -10.50     5.69    6.44    3.42
$hbox 6 "joint_luleg"	    -2.54   -9.54  -19.01     8.95    5.04    1.87
$hbox 6 "joint_ldleg"	    -7.61   -7.60  -19.64     7.65   11.11    6.39
$hbox 6 "joint_lankle"	    -5.12  -15.29   -7.95     7.73    7.11    5.77
$hbox 7 "joint_ruleg"	    -8.16   -9.55  -19.01     3.34    5.04    1.84
$hbox 7 "joint_rdleg"	    -6.96   -7.62  -19.68     8.38   11.06    6.39
$hbox 7 "joint_rankle"	    -7.02  -15.33   -7.94     5.83    7.07    5.78

// .qc block generated by HLMV ends.

