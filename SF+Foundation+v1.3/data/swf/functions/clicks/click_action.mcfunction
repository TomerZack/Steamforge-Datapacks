# ======================================================================================================================================
execute as @s[tag=empty_bucket] at @s positioned ~ ~-0.5 ~ if entity @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1] unless score @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,limit=1,sort=nearest] fluid_mb matches ..599 run function swf:clicks/barrel_empty
execute as @s[tag=right_action] at @s unless block ^ ^ ^0.05 air if block ^ ^ ^ air run function swf:clicks/click_block_action
execute as @s[tag=jar_action] at @s if entity @e[type=minecraft:shulker_bullet,distance=0..0.7] run function swf:clicks/shb_jarring
execute as @s[scores={fluid_type=1}] at @s positioned ~ ~-0.5 ~ if entity @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=fluid_full,scores={fluid_type=1}] unless score @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=fluid_full,scores={fluid_type=1},limit=1,sort=nearest] fluid_mb matches 4201.. run function swf:clicks/barrel_water_fill
execute as @s[scores={fluid_type=1}] at @s positioned ~ ~-0.5 ~ if entity @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=!fluid_full] unless score @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=!fluid_full,limit=1,sort=nearest] fluid_mb matches 4201.. run function swf:clicks/barrel_water_fill
execute as @s[scores={fluid_type=2}] at @s positioned ~ ~-0.5 ~ if entity @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=fluid_full,scores={fluid_type=2}] unless score @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=fluid_full,scores={fluid_type=2},limit=1,sort=nearest] fluid_mb matches 4201.. run function swf:clicks/barrel_lava_fill
execute as @s[scores={fluid_type=2}] at @s positioned ~ ~-0.5 ~ if entity @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=!fluid_full] unless score @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,tag=!fluid_full,limit=1,sort=nearest] fluid_mb matches 4201.. run function swf:clicks/barrel_lava_fill
execute as @s[tag=popped_chorus] at @s positioned ~ ~-0.5 ~ if entity @e[type=minecraft:armor_stand,tag=stone_barrel,distance=0..1,scores={fluid_mb=200..fluid_type=2}] run function swf:clicks/blazing_purpur

execute as @s[tag=shb_jar_action] at @s run function swf:clicks/shb_unjarring
function minecraft:addons/actions1
function minecraft:addons/actions2
function minecraft:addons/actions3