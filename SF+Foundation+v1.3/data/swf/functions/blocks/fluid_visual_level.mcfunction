execute store result score @s property_1 run data get entity @s Pos[1] 10000
scoreboard players operation @s property_1 += @s fluid_mb
execute store result entity @e[tag=visual_fluid,sort=nearest,limit=1,distance=0..1] Pos[1] double 0.0001 run scoreboard players get @s property_1