scoreboard players add @e[tag=stone_barrel,limit=1,sort=nearest] fluid_mb 600
scoreboard players set @e[tag=stone_barrel,limit=1,sort=nearest] fluid_type 1
tag @e[tag=stone_barrel,limit=1,sort=nearest] add fluid_full
execute as @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] at @s unless entity @e[tag=waterbp,distance=0..0.7] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["waterbp","visual_fluid"],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] at @s run function swf:blocks/fluid_visual_level
replaceitem entity @e[nbt={SelectedItem:{id:"minecraft:water_bucket"}},tag=clicking_tag,limit=1,sort=nearest] weapon.mainhand minecraft:bucket

execute as @e[tag=right_action] at @s run scoreboard players set @e[scores={villclick=1..}] villclick 0
kill @s
