// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/battle_armor_empty.mdl"
$scale 38
//$origin 0 0 -38 0

$BodyGroup "Hull"
{
	studio "battle_armor_empty.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\battle_armor\"

$texturegroup "skinfamilies"
{
	{ "BattleArmor"          }
	{ "BattleArmor_MP" }
}

// RAGDOLL

$sequence "power_up" {
	"ba_empty_anims\close.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down" {
	"ba_empty_anims\open.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "power_down_pose" {
	"ba_empty_anims\base.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "reference" {
	"battle_armor_empty.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"battle_armor_empty.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

// COLLISION

$collisionmodel "battle_armor_empty.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
