// Created by Crowbar 0.62

$modelname "mechassault_2/mechs/cougar.mdl"


$bodygroup "Legs"
{
	studio "Cougar Hips.smd"
}
$bodygroup "Torso"
{
	studio "Cougar HQD Torso.smd"
}
$bodygroup "Defenses"
{
	studio "Cougar Vent L.smd"
}
$bodygroup "Sensor"
{
	studio "Cougar Sensor.smd"
}
$bodygroup "Jumpjets"
{
	studio "Cougar Jump Jets.smd"
}
$bodygroup "Pilot"
{
	blank
	studio "cougar_Mech Piloting Chair.smd"
}


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\cougar\"

$texturegroup "skinfamilies"
{
	{ "Cougar"    "Reac_Glow"   }
	{ "Puma"      "Reac_Glow"   }
	{ "Cougar_MP" "Reac_Glow_2" }
	{ "Puma_MP"   "Reac_Glow_2" }
}
$scale	1
$attachment "pulse_laser_R" "joint_rgunlower" 18.88 -16.25 87.69 rotate -90 -0 0
$attachment "pulse_laser_L" "joint_lgunlower" -19.75 -15.25 88.69 rotate -90 -0 0
$attachment "autocannon_R" "joint_rgunlower" 10.13 -45.50 125.69 rotate -90 -0 0
$attachment "autocannon_L" "joint_lgunlower" -10.75 -45.50 124.69 rotate -90 -0 0
$attachment "missile_pod_R" "joint_torso" 80 -35 38 rotate 0 -90 0
$attachment "missile_pod_L" "joint_torso" -80 -35 38 rotate 0 -90 0
$attachment "machinegun_R" "joint_torso" 76.00 -58.00 7.00 rotate -0 -90 0
$attachment "machinegun_L" "joint_torso" -76.00 -58.00 7.00 rotate -0 -90 0
$scale	1.125
$attachment "defense_system" "joint_torso" -2 12 74 rotate -90 0 0
$scale	1
$attachment "jumpjets_main" "joint_torso" -0.38 76.38 -8.75 rotate 90 -0 0
$attachment "jumpjets_L" "joint_torso" 31.00 92.00 19.00 rotate 30 40 0
$attachment "jumpjets_R" "joint_torso" -31.00 92.00 19.00 rotate 30 140 0
$scale		1
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" -4.00 105.00 15.00 rotate -0 -90 0
$cbox 0 0 0 0 0 0

$bbox -114.71 -166.668 -37.527 110.163 167.195 367.077

$hboxset "default"
$hbox 2 "joint_hipbelow" -34.038502 -39.662498 -32.660999 28.215 27.084499 25.1465
$hbox 3 "joint_torso" -100.756996 -93.327995 -8.967999 95.009499 78.318001 71.620499
$hbox 3 "joint_torsoabove" -110.218994 0 0 110.218994 17.290001 41.068501
$hbox 4 "joint_luarm" -25.346001 -13.603999 -49.551998 15.124 23.645498 3.61
$hbox 4 "joint_lgunabove" -26.201 -7.0585 -27.379 7.866 16.1215 0
$hbox 4 "joint_lgunlower" -30.343 -52.202499 -17.613001 0.5605 0 100.4245
$hbox 5 "joint_ruarm" -15.124 -13.603999 -49.551998 19.418001 23.645498 3.61
$hbox 5 "joint_rgunabove" -13.803499 -7.0585 -27.379 20.273001 16.1215 0
$hbox 5 "joint_rgunlower" -6.4505 -52.202499 -17.613001 24.452999 0 100.4245
$hbox 7 "joint_ruleg" -41.723999 -23.873499 -78.451004 13.8225 54.976498 13.699
$hbox 7 "joint_rdleg" -12.8345 -76.161499 -70.509003 33.8675 7.2865 9.12
$hbox 7 "joint_rankle" -29.640001 -23.8165 -33.658501 14.3735 34.181 11.172
$hbox 7 "joint_ritoe" -2.242 -3.8665 -9.651999 30.675501 20.491499 11.219501
$hbox 7 "joint_rotoe" -8.929999 -5.567 -9.443 15.418499 41.505497 11.428499
$hbox 7 "joint_rftoe" -11.02 -33.905499 -10.26 13.337999 13.176499 10.6115
$hbox 6 "joint_luleg" -19.323 -23.882999 -78.365494 36.204498 54.966999 13.794001
$hbox 6 "joint_ldleg" -39.1875 -76.161499 -70.432999 7.524 7.2675 9.177
$hbox 6 "joint_lankle" -19.693499 -23.769001 -33.667999 24.32 34.181 11.162499
$hbox 6 "joint_litoe" -35.995499 -3.8665 -9.6615 0 20.481998 11.21
$hbox 6 "joint_lotoe" -18.695999 -9.7565 -9.452499 5.662 37.315998 11.419001
$hbox 6 "joint_lftoe" -18.648499 -33.953003 -9.452499 5.7 13.129 11.419001
$hbox 0 "root" -11.7705 -66.851501 0 6.023 0 244.102509

$definebone "joint_ROOT" "" 0 7.80935 203.052704 0 0 0 0 0 0 0 0 0
$definebone "joint_hipbelow" "joint_ROOT" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_hip" "joint_hipbelow" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_hipabove" "joint_hip" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_torsobelow" "joint_hipabove" 0 -7.80935 37.996307 0 0 0 0 0 0 0 0 0
$definebone "joint_torso" "joint_torsobelow" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_torsoabove" "joint_torso" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_luarmabove" "joint_torsoabove" 132.758606 20.8249 49.459106 0 0 0 0 0 0 0 0 0
$definebone "joint_luarm" "joint_luarmabove" 0 0 0.000061 0 0 0 0 0 0 0 0 0
$definebone "joint_lgunabove" "joint_luarm" 18.221756 0 -36.443451 0 0 0 0 0 0 0 0 0
$definebone "joint_lgun" "joint_lgunabove" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_lgunlower" "joint_lgun" 14.418198 -0.260799 -21.888153 0 0 89.999983 0 0 0 0 0 0
$definebone "joint_ruarmabove" "joint_torsoabove" -132.758606 20.8249 49.459106 0 0 0 0 0 0 0 0 0
$definebone "joint_ruarm" "joint_ruarmabove" 0 0 0.000061 0 0 0 0 0 0 0 0 0
$definebone "joint_rgunabove" "joint_ruarm" -18.221756 0 -36.443497 0 0 0 0 0 0 0 0 0
$definebone "joint_rgun" "joint_rgunabove" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_rgunlower" "joint_rgun" -14.468506 -0.260799 -21.888107 0 0 89.999983 0 0 0 0 0 0
$definebone "joint_ruleg" "joint_ROOT" -42.271797 0 0 0.742553 0 -0.078553 0 0 0 0 0 0
$definebone "joint_rdleg" "joint_ruleg" -26.003502 39.046093 -72.887344 0 0 0.161001 0 0 0 0 0 0
$definebone "joint_rankle" "joint_rdleg" 10.412453 -70.283859 -76.791893 -0.74198 0.000802 -0.074828 0 0 0 0 0 0
$definebone "joint_ritoe" "joint_rankle" 15.618652 -2.603149 -32.538849 0 0 -0.000286 0 0 0 0 0 0
$definebone "joint_rotoe" "joint_rankle" -26.031097 13.01545 -32.538902 0.000057 51.999702 0 0 0 0 0 0 0
$definebone "joint_rftoe" "joint_rankle" 0.000053 -28.688501 -31.558798 0 0 0 0 0 0 0 0 0
$definebone "joint_luleg" "joint_ROOT" 42.424351 0 0 -0.679241 0 -0.061478 0 0 0 0 0 0
$definebone "joint_ldleg" "joint_luleg" 25.911144 39.046398 -72.887115 0 0.000286 0.129145 0 0 0 0 0 0
$definebone "joint_lankle" "joint_ldleg" -10.412804 -70.284393 -76.791245 0.678497 -0.000859 -0.059187 0 0 0 0 0 0
$definebone "joint_litoe" "joint_lankle" -15.618652 -2.602949 -32.538895 0 -0.000115 0.000286 0 0 0 0 0 0
$definebone "joint_lotoe" "joint_lankle" 26.031097 13.015698 -32.538799 0.000229 -51.999924 0.000401 0 0 0 0 0 0
$definebone "joint_lftoe" "joint_lankle" 0 -28.634048 -32.538998 0 -0.000286 0.000401 0 0 0 0 0 0
$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "ROOT_BONE" "" 0 9.75 -0.9583 0 0 0 0 0 0 0 0 0


$sectionframes 30 30

$poseparameter "aim_pitch" -1 1 loop 0
$poseparameter "aim_yaw" -180 180 loop 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

$origin 0 0 -18 0
$animation "a_idle" "cougar_anims\a_idle.smd" {
	fps 15
	loop
}

$animation "aim_mid_center" "cougar_anims\aim_mid_center.smd" {
	fps 15
	loop
}

$animation "aim_mid_left" "cougar_anims\aim_mid_left.smd" {
	fps 15
	loop
}

$animation "aim_mid_right" "cougar_anims\aim_mid_right.smd" {
	fps 15
	loop
}

$animation "aim_up_center" "cougar_anims\aim_up_center.smd" {
	fps 15
	loop
}

$animation "aim_up_left" "cougar_anims\aim_up_left.smd" {
	fps 15
	loop
}

$animation "aim_up_right" "cougar_anims\aim_up_right.smd" {
	fps 15
	loop
}

$animation "aim_down_center" "cougar_anims\aim_down_center.smd" {
	fps 15
	loop
}

$animation "aim_down_left" "cougar_anims\aim_down_left.smd" {
	fps 15
	loop
}

$animation "aim_down_right" "cougar_anims\aim_down_right.smd" {
	fps 15
	loop
}

$animation "a_land" "cougar_anims\a_land.smd" {
	fps 30
	walkframe 35 LX LY
}

$animation "a_hit_back" "cougar_anims\a_hit_back.smd" {
	fps 30
	loop
	walkframe 35 LX LY
}

$animation "a_hit_front" "cougar_anims\a_hit_front.smd" {
	fps 30
	loop
	walkframe 35 LX LY
}

$animation "a_hit_left" "cougar_anims\a_hit_left.smd" {
	fps 15
	loop
}

$animation "a_hit_right" "cougar_anims\a_hit_right.smd" {
	fps 15
	loop
}

$animation "a_walk_N" "cougar_anims\a_walk_N.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_NW" "cougar_anims\a_walk_NW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_NE" "cougar_anims\a_walk_NE.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_W" "cougar_anims\a_walk_W.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_E" "cougar_anims\a_walk_E.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_S" "cougar_anims\a_walk_S.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_SW" "cougar_anims\a_walk_SW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_SE" "cougar_anims\a_walk_SE.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_run_N" "cougar_anims\a_run_N.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_NW" "cougar_anims\a_run_NW.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_NE" "cougar_anims\a_run_NE.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_W" "cougar_anims\a_run_W.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_E" "cougar_anims\a_run_E.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_S" "cougar_anims\a_run_S.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_SW" "cougar_anims\a_run_SW.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_run_SE" "cougar_anims\a_run_SE.smd" {
	fps 15
	loop
	walkframe 24 LX LY
}

$animation "a_walk_limp_N" "cougar_anims\a_walk_limp_N.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_NW" "cougar_anims\a_walk_limp_NW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_NE" "cougar_anims\a_walk_limp_NE.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_W" "cougar_anims\a_walk_limp_W.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_E" "cougar_anims\a_walk_limp_E.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_S" "cougar_anims\a_walk_limp_S.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_SW" "cougar_anims\a_walk_limp_SW.smd" {
	fps 15
	loop
	walkframe 28 LX LY
}

$animation "a_walk_limp_SE" "cougar_anims\a_walk_limp_SE.smd" {
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
	{ event AE_CL_PLAYSOUND 14 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 28 "MA2_Mech.Step" }
	{ event 1100 14 "event_ma2_mech_step" }
	{ event 1100 28 "event_ma2_mech_step" }
	fadein 0.3
	fadeout 0.5
	addlayer "aimlayer_generic"
	node "movement"
}

$sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"cougar_anims\walk_limp.smd"
	"a_walk_limp_E"
	"a_walk_limp_SW"
	"a_walk_limp_S"
	"a_walk_limp_SE"
	activity "ACT_WALK_ON_FIRE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 28 "MA2_Mech.Step" }
	{ event 1100 12 "event_ma2_mech_step" }
	{ event 1100 28 "event_ma2_mech_step" }
	fadein 0.3
	fadeout 0.5
	addlayer "aimlayer_generic"
	node "movement"
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
	{ event 1100 1 "event_ma2_mech_step" }
	{ event 1100 13 "event_ma2_mech_step" }
	fadein 0.3
	fadeout 0.5
	addlayer "aimlayer_generic"
	node "movement"
}
$origin 0 0 -37 0
$sequence "fall_forward" {
	"cougar_anims\fall_forward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "fall_back" {
	"cougar_anims\fall_back.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "fall_left" {
	"cougar_anims\fall_left.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "fall_right" {
	"cougar_anims\fall_right.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 70 LX LY
}

$sequence "getup" {
	"cougar_anims\getup.smd"
	activity "ACT_GET_UP_STAND" 1
	{ event AE_CL_PLAYSOUND 35 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
	{ event 1100 35 "event_ma2_mech_step" }
	{ event 1100 45 "event_ma2_mech_step" }
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 75 LX LY
}

$sequence "getup_right" {
	"cougar_anims\getup_right.smd"
	activity "ACT_GET_UP_STAND" 1
	{ event AE_CL_PLAYSOUND 35 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 45 "MA2_Mech.Step" }
	{ event 1100 35 "event_ma2_mech_step" }
	{ event 1100 45 "event_ma2_mech_step" }
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 75 LX LY
}
$origin 0 0 -18 0

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
$origin 0 0 40 0
$sequence "jump" {
	"cougar_anims\jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer	"aimlayer_generic"
	loop
	walkframe 30 LX LY
}
$origin 0 0 -18 0
$sequence "land" {
	"a_land"
	activity "ACT_LAND" 1
	{ event AE_CL_PLAYSOUND 1 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event 1100 1 "event_ma2_mech_step" }
	{ event 1100 2 "event_ma2_mech_step" }
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "idle" {
	"cougar_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_generic"
	fps 30
	loop
}

$sequence "idle_limp" {
	"cougar_anims\idle_limp.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_generic"
	fps 30
	loop
}
$origin 0 0 -37 0
$sequence "power_up" {
	"cougar_anims\power_up.smd"
	activity "ACT_OBJ_STARTUP" 1
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 29 "MA2_Mech.Step" }
	{ event 1100 15 "event_ma2_mech_step" }
	{ event 1100 29 "event_ma2_mech_step" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down" {
	"cougar_anims\power_down.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	{ event AE_CL_PLAYSOUND 15 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
	{ event 1100 15 "event_ma2_mech_step" }
	{ event 1100 22 "event_ma2_mech_step" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down_pose" {
	"cougar_anims\power_down_pose.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
$origin 0 0 -36 0
$sequence "reference" {
	"cougar_anims\reference.smd"
	fadein 1
	fadeout 1
	fps 10
}

$sequence "ragdoll" {
	"cougar_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}
$origin 0 0 0 0
$collisionjoints "cougar_physics.smd"
{
	$mass 50000
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "joint_hipbelow"


	$jointconstrain "joint_luleg" x limit -12 12 0
	$jointconstrain "joint_luleg" y limit -5 5 0
	$jointconstrain "joint_luleg" z limit -55 32 0

	$jointconstrain "joint_ldleg" x limit 0 0 0
	$jointconstrain "joint_ldleg" y limit 0 0 0
	$jointconstrain "joint_ldleg" z limit -85 0 0

	$jointconstrain "joint_ruleg" x limit -12 12 0
	$jointconstrain "joint_ruleg" y limit -5 5 0
	$jointconstrain "joint_ruleg" z limit -55 32 0

	$jointconstrain "joint_rdleg" x limit 0 0 0
	$jointconstrain "joint_rdleg" y limit 0 0 0
	$jointconstrain "joint_rdleg" z limit -85 0 0

	$jointconstrain "joint_rankle" x limit 0 0 0
	$jointconstrain "joint_rankle" y limit -25 6 0
	$jointconstrain "joint_rankle" z limit -10 35 0

	$jointconstrain "joint_torso" x limit -15 5 0
	$jointconstrain "joint_torso" y limit -180 180 0
	$jointconstrain "joint_torso" z limit 0 0 0

	$jointconstrain "joint_ruarm" x limit 0 0 0
	$jointconstrain "joint_ruarm" y limit 0 0 0
	$jointconstrain "joint_ruarm" z limit -88 48 0

	$jointconstrain "joint_luarm" x limit 0 0 0
	$jointconstrain "joint_luarm" y limit 0 0 0
	$jointconstrain "joint_luarm" z limit -88 48 0

	$jointconstrain "joint_lgunabove" x limit 0 0 0
	$jointconstrain "joint_lgunabove" y limit 0 0 0
	$jointconstrain "joint_lgunabove" z limit -150 75 0

	$jointconstrain "joint_rgunabove" x limit 0 0 0
	$jointconstrain "joint_rgunabove" y limit 0 0 0
	$jointconstrain "joint_rgunabove" z limit -150 75 0

	$jointconstrain "joint_lankle" x limit 0 0 0
	$jointconstrain "joint_lankle" y limit -19 19 0
	$jointconstrain "joint_lankle" z limit -10 35 0

	$jointcollide "joint_lgunabove" "joint_torso"
	$jointcollide "joint_rgunabove" "joint_torso"
	$jointcollide "joint_ruleg" "joint_luleg"
	$jointcollide "joint_rdleg" "joint_ldleg"
	$jointcollide "joint_lankle" "joint_rankle"
	$jointcollide "joint_lankle" "joint_rdleg"
	$jointcollide "joint_rankle" "joint_ldleg"
	$jointcollide "joint_lgunabove" "joint_luleg"
	$jointcollide "joint_lgunabove" "joint_ruleg"
	$jointcollide "joint_rgunabove" "joint_luleg"
	$jointcollide "joint_rgunabove" "joint_ruleg"
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
		"rootname" "joint_hipbelow"
		"totalmass" "90.000000"
	}
}
