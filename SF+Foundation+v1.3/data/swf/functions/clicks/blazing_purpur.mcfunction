scoreboard players remove @e[tag=stone_barrel,limit=1,sort=nearest] fluid_mb 200
execute as @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=0}] at @s run kill @e[limit=1,distance=0..0.7,sort=nearest,tag=visual_fluid]
execute as @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=1..}] at @s run function swf:blocks/fluid_visual_level
clear @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit"}},sort=nearest,limit=1] minecraft:popped_chorus_fruit 1
execute as @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_type=2}] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:popped_chorus_fruit",Count:1b,tag:{display:{Name:"{\"text\":\"Blazing Purpur\",\"color\":\"gold\",\"italic\":\"false\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:0}],HideFlags:1,blazing_purpur:1b}}}

execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=0}] run scoreboard players set @e[tag=stone_barrel,limit=1,sort=nearest] fluid_type 0
execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=0}] run tag @e[tag=stone_barrel,limit=1,sort=nearest] remove fluid_full

tag @e[tag=right_action] remove right_action
kill @e[type=minecraft:armor_stand,tag=popped_chorus]