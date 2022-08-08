scoreboard players remove @e[tag=stone_barrel,limit=1,sort=nearest] fluid_mb 600
execute as @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=0}] at @s run kill @e[limit=1,distance=0..0.7,sort=nearest,tag=visual_fluid]
execute as @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=1..}] at @s run function swf:blocks/fluid_visual_level
clear @a[nbt={SelectedItem:{id:"minecraft:bucket"}},sort=nearest,limit=1] minecraft:bucket 1

execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_type=1}] run give @a[tag=clicking_tag,sort=nearest,limit=1] minecraft:water_bucket 1
execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_type=2}] run give @a[tag=clicking_tag,sort=nearest,limit=1] minecraft:lava_bucket 1

execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=0}] run scoreboard players set @e[tag=stone_barrel,limit=1,sort=nearest] fluid_type 0
execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=0}] run tag @e[tag=stone_barrel,limit=1,sort=nearest] remove fluid_full

execute as @e[tag=right_action] at @s run scoreboard players set @e[scores={villclick=1..}] villclick 0
kill @s
