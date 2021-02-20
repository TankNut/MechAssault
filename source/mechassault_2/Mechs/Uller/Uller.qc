// Created by Crowbar 0.62

$modelname "mechassault_2/mechs/uller.mdl"

$bodygroup "Legs"
{
	studio "Uller Body Lower.smd"
}
$bodygroup "Torso"
{
	studio "Uller Body Upper .smd"
}
$bodygroup "JumpJets"
{
	studio "uller_Jump Jets.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\uller\"

$texturegroup "skinfamilies"
{
	{ "Uller"     "Reac_Glow"    }
	{ "kitfox"    "Reac_Glow"    }
	{ "uller_MP"  "Reac_Glow_MP" }
	{ "kitfox_MP" "Reac_Glow_MP" }
}

$attachment "pulse_laser_R" "joint_rgun" 7 -83 -31 rotate 0 -90 0
$attachment "pulse_laser_L" "joint_lgun" -9 -83 -31 rotate 0 -90 0
$attachment "rocketpod_L" "joint_torso" 34 -10 70.5 rotate 0 -90 0
$attachment "rocketpod_R" "joint_torso" -34 -10 70.5 rotate 0 -90 0
$attachment "jumpjets_main" "joint_torso" 0 42 5 rotate 90 0 0
$attachment "jumpjets_L" "joint_torso" 21 52 24 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -21 52 24 rotate 30 140 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 85.00 30.00 rotate -0 -90 0
$cbox 0 0 0 0 0 0

$bbox -87.362 -129.223 0.895 115.004 130.05 317.234

$hboxset "default"
$hbox 2 "joint_ROOT" -32.084999 -40.877998 -15.759 32.084999 13.716 26.756998
$hbox 3 "joint_torso" -60.740997 -55.196999 0 60.740997 48.392998 81.404999
$hbox 3 "joint_torsoabove" -67.463997 0 0 67.463997 4.509 23.417999
$hbox 4 "joint_luarm" -6.858 -12.33 -22.931999 12.204 10.448999 14.210999
$hbox 4 "joint_lgun" -13.842 -72.710999 -35.136002 9.368999 15.219 2.106
$hbox 5 "joint_ruarm" -12.006 -12.33 -22.931999 7.065 10.448999 14.210999
$hbox 5 "joint_rgun" -10.728 -72.710999 -35.136002 12.483 15.219 2.106
$hbox 7 "joint_ruleg" -30.707998 -21.293999 -51.209999 0 38.744999 18.945
$hbox 7 "joint_rdleg" -8.766 -58.328995 -48.302998 26.792999 5.193 12.320999
$hbox 7 "joint_rankle" -20.681999 -18.531 -24.803999 12.825 21.465 9.323999
$hbox 7 "joint_ritoe" -1.863 -8.217 -9.405 23.202 10.323 6.48
$hbox 7 "joint_rotoe" -9.342 -6.615 -9.620999 9.189 29.223 6.273
$hbox 7 "joint_rftoe" -6.3 -31.058998 -9.981 12.24 4.779 5.913
$hbox 6 "joint_luleg" 0 -21.285 -51.192001 30.581999 38.744999 18.962999
$hbox 6 "joint_ldleg" -27.188999 -58.32 -48.348 8.37 5.193 12.257999
$hbox 6 "joint_lankle" -13.374 -18.521999 -24.813 20.132999 21.474001 9.315001
$hbox 6 "joint_litoe" -25.533001 -8.198999 -9.431999 0 10.341 6.453
$hbox 6 "joint_lotoe" -8.990999 -6.363 -9.620999 9.549 29.474998 6.264
$hbox 6 "joint_lftoe" -12.312 -31.086 -9.405 6.228 4.752 6.48

$definebone "joint_ROOT" "" 0 6.512856 169.333786 0 0 0 0 0 0 0 0 0
$definebone "joint_hipbelow" "joint_ROOT" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_hip" "joint_hipbelow" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_hipabove" "joint_hip" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_torsobelow" "joint_hipabove" 0 -21.275269 31.688248 0 0 0 0 0 0 0 0 0
$definebone "joint_torso" "joint_torsobelow" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_torsoabove" "joint_torso" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_luarmabove" "joint_torsoabove" 98.387268 6.570984 34.146667 0 0 0 0 0 0 0 0 0
$definebone "joint_luarm" "joint_luarmabove" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_lgunabove" "joint_luarm" 15.196609 -0.7728 -30.393173 0 0 0 0 0 0 0 0 0
$definebone "joint_lgun" "joint_lgunabove" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_ruarmabove" "joint_torsoabove" -98.379875 6.570984 34.146667 0 0 0 0 0 0 0 0 0
$definebone "joint_ruarm" "joint_ruarmabove" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_rgunabove" "joint_ruarm" -15.196609 -0.7728 -30.393219 0 0 0 0 0 0 0 0 0
$definebone "joint_rgun" "joint_rgunabove" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_ruleg" "joint_ROOT" -35.253918 0 0 0.742553 -0.000057 -0.078381 0 0 0 0 0 0
$definebone "joint_rdleg" "joint_ruleg" -21.686489 32.563522 -60.786797 0 0.000172 0.160485 0 0 0 0 0 0
$definebone "joint_rankle" "joint_rdleg" 8.683712 -58.615112 -64.043304 -0.74198 0.00063 -0.074542 0 0 0 0 0 0
$definebone "joint_ritoe" "joint_rankle" 13.025673 -2.170897 -27.136824 0 0.000057 0.000344 0 0 0 0 0 0
$definebone "joint_rotoe" "joint_rankle" -21.709465 10.854688 -27.136824 -0.000057 52.000505 -0.000172 0 0 0 0 0 0
$definebone "joint_rftoe" "joint_rankle" 0.000088 -23.925592 -26.319504 0 0.000057 0 0 0 0 0 0 0
$definebone "joint_luleg" "joint_ROOT" 35.381138 0 0 -0.679241 -0.000057 -0.060676 0 0 0 0 0 0
$definebone "joint_ldleg" "joint_luleg" 21.609383 32.563148 -60.787064 0 0.000802 0.128285 0 0 0 0 0 0
$definebone "joint_lankle" "joint_ldleg" -8.684505 -58.615795 -64.042572 0.678497 -0.001203 -0.059072 0 0 0 0 0 0
$definebone "joint_litoe" "joint_lankle" -13.025669 -2.170813 -27.136833 0 0 0.000344 0 0 0 0 0 0
$definebone "joint_lotoe" "joint_lankle" 21.709473 10.854817 -27.136747 0.000229 -52.000102 0.000344 0 0 0 0 0 0
$definebone "joint_lftoe" "joint_lankle" -0.000038 -23.880278 -27.136959 0 0 0.000344 0 0 0 0 0 0
$definebone "ROOT" "" 0 6.512856 1.333794 0 0 0 0 0 0 0 0 0


$sectionframes 30 30

$poseparameter "aim_pitch" -1 1 loop 0
$poseparameter "aim_yaw" -180 180 loop 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

$animation "a_idle" "uller_anims\a_idle.smd" {
	fps 15
	loop
}

$animation "aim_mid_center" "uller_anims\aim_mid_center.smd" {
	fps 15
	loop
}

$animation "aim_mid_left" "uller_anims\aim_mid_left.smd" {
	fps 15
	loop
}

$animation "aim_mid_right" "uller_anims\aim_mid_right.smd" {
	fps 15
	loop
}

$animation "aim_up_center" "uller_anims\aim_up_center.smd" {
	fps 15
	loop
}

$animation "aim_up_left" "uller_anims\aim_up_left.smd" {
	fps 15
	loop
}

$animation "aim_up_right" "uller_anims\aim_up_right.smd" {
	fps 15
	loop
}

$animation "aim_down_center" "uller_anims\aim_down_center.smd" {
	fps 15
	loop
}

$animation "aim_down_left" "uller_anims\aim_down_left.smd" {
	fps 15
	loop
}

$animation "aim_down_right" "uller_anims\aim_down_right.smd" {
	fps 15
	loop
}

$animation "a_land" "uller_anims\a_land.smd" {
	fps 30
	walkframe 35 LX LY
}

$animation "a_hit_back" "uller_anims\a_hit_back.smd" {
	fps 30
	loop
	walkframe 35 LX LY
}

$animation "a_hit_front" "uller_anims\a_hit_front.smd" {
	fps 30
	loop
	walkframe 35 LX LY
}

$animation "a_hit_left" "uller_anims\a_hit_left.smd" {
	fps 15
	loop
}

$animation "a_hit_right" "uller_anims\a_hit_right.smd" {
	fps 15
	loop
}

$animation "a_walk_N" "uller_anims\a_walk_N.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_NW" "uller_anims\a_walk_NW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_NE" "uller_anims\a_walk_NE.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_W" "uller_anims\a_walk_W.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_E" "uller_anims\a_walk_E.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_S" "uller_anims\a_walk_S.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_SW" "uller_anims\a_walk_SW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_SE" "uller_anims\a_walk_SE.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_run_N" "uller_anims\a_run_N.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_NW" "uller_anims\a_run_NW.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_NE" "uller_anims\a_run_NE.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_W" "uller_anims\a_run_W.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_E" "uller_anims\a_run_E.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_S" "uller_anims\a_run_S.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_SW" "uller_anims\a_run_SW.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_SE" "uller_anims\a_run_SE.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_walk_limp_N" "uller_anims\a_walk_limp_N.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_NW" "uller_anims\a_walk_limp_NW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_NE" "uller_anims\a_walk_limp_NE.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_W" "uller_anims\a_walk_limp_W.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_E" "uller_anims\a_walk_limp_E.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_S" "uller_anims\a_walk_limp_S.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_SW" "uller_anims\a_walk_limp_SW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_SE" "uller_anims\a_walk_limp_SE.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$sequence "aimlayer_generic" {
	"aim_up_right"
	"aim_up_center"
	"aim_up_left"
	"aim_mid_right"
	"aim_mid_center"
	"aim_mid_left"
	"aim_down_right"
	"aim_down_center"
	"aim_down_left"
	blend "aim_yaw" -180 180
	blend "aim_pitch" -0.1 0.1
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "walk" {
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
	blend "move_y" -1 1
	blend "move_x" 1 -1
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_generic"
	node "movement"
	snap
}

$sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"uller_anims\walk_limp.smd"
	"a_walk_limp_E"
	"a_walk_limp_SW"
	"a_walk_limp_S"
	"a_walk_limp_SE"
	activity "ACT_WALK_ON_FIRE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_generic"
	node "movement"
	snap
	fps 15
	loop
	walkframe 28 LX LY
}

$sequence "run" {
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
	blend "move_y" -1 1
	blend "move_x" 1 -1
	{ event AE_CL_PLAYSOUND 1 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 13 "MA2_Mech.Step" }
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_generic"
	node "movement"
	snap
}

$sequence "jump" {
	"uller_anims\jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 30 LX LY
}
$origin 0 0 -40 0

$sequence "fall_forward" {
	"uller_anims\fall_forward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "fall_back" {
	"uller_anims\fall_back.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "fall_left" {
	"uller_anims\fall_left.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "fall_right" {
	"uller_anims\fall_right.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "getup" {
	"uller_anims\getup.smd"
	activity "ACT_GET_UP_STAND" 1
	{ event AE_CL_PLAYSOUND 33 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 75 LX LY
}

$sequence "getup_right" {
	"uller_anims\getup_right.smd"
	activity "ACT_GET_UP_STAND" 1
	{ event AE_CL_PLAYSOUND 32 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 46 "MA2_Mech.Step" }
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 75 LX LY
}
$origin 0 0 0 0

$sequence "hit_back" {
	"a_hit_back"
	activity "ACT_FLINCH_CHEST" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "hit_front" {
	"a_hit_front"
	activity "ACT_FLINCH_CHEST" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "land" {
	"a_land"
	activity "ACT_LAND" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "idle" {
	"uller_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_generic"
	fps 30
	loop
}

$sequence "idle_limp" {
	"uller_anims\idle_limp.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_generic"
	fps 30
	loop
}
$origin 0 0 -40 0

$sequence "power_up" {
	"uller_anims\power_up.smd"
	activity "ACT_OBJ_STARTUP" 1
	{ event AE_CL_PLAYSOUND 16 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 30 "MA2_Mech.Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down" {
	"uller_anims\power_down.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down_pose" {
	"uller_anims\power_down_pose.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
$origin 0 0 3 0

$sequence "reference" {
	"uller_anims\reference.smd"
	fadein 1
	fadeout 1
	fps 10
}

$sequence "ragdoll" {
	"uller_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}
$origin 0 0 0 0
$collisionjoints "uller_physics.smd"
{
	$mass 25000
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "joint_ROOT"


	$jointconstrain "joint_luleg" x limit -20 50 0
	$jointconstrain "joint_luleg" y limit 0 0 0
	$jointconstrain "joint_luleg" z limit 0 0 0

	$jointconstrain "joint_ldleg" x limit 0 45 0
	$jointconstrain "joint_ldleg" y limit 0 0 0
	$jointconstrain "joint_ldleg" z limit 0 0 0

	$jointconstrain "joint_ruleg" x limit -20 50 0
	$jointconstrain "joint_ruleg" y limit 0 0 0
	$jointconstrain "joint_ruleg" z limit 0 0 0

	$jointconstrain "joint_rdleg" x limit 0 45 0
	$jointconstrain "joint_rdleg" y limit 0 0 0
	$jointconstrain "joint_rdleg" z limit 0 0 0

	$jointconstrain "joint_rankle" x limit -20 20 0
	$jointconstrain "joint_rankle" y limit 0 0 0
	$jointconstrain "joint_rankle" z limit 0 0 0

	$jointconstrain "joint_torso" x limit 0 0 0
	$jointconstrain "joint_torso" y limit 0 0 0
	$jointconstrain "joint_torso" z limit -180 180 0

	$jointconstrain "joint_lgun" x limit -20 20 0
	$jointconstrain "joint_lgun" y limit 0 0 0
	$jointconstrain "joint_lgun" z limit 0 0 0

	$jointconstrain "joint_rgun" x limit -20 20 0
	$jointconstrain "joint_rgun" y limit 0 0 0
	$jointconstrain "joint_rgun" z limit 0 0 0

	$jointconstrain "joint_lankle" x limit -20 20 0
	$jointconstrain "joint_lankle" y limit 0 0 0
	$jointconstrain "joint_lankle" z limit 0 0 0

	$jointcollide "joint_ruleg" "joint_luleg"
	$jointcollide "joint_rdleg" "joint_ldleg"
	$jointcollide "joint_lankle" "joint_rankle"
	$jointcollide "joint_lankle" "joint_rdleg"
	$jointcollide "joint_rankle" "joint_ldleg"
}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin" "1.000000"
		"animfrictionmax" "400.000000"
		"animfrictiontimein" "0.500000"
		"animfrictiontimeout" "0.300000"
		"animfrictiontimehold" "0.000000"
	}
	editparams 
	{
		"rootname" "joint_ROOT"
		"totalmass" "90.000000"
	}
}
