execute as @s[tag=barrel_vill] at @s store result score @s property_1 run data get entity @s Health
execute as @s[tag=barrel_vill,scores={property_1=..1023}] at @s run function swf:blocks/break_barrel
execute as @s[tag=barrel_vill] at @s unless block ~ ~ ~ minecraft:player_head run effect give @s minecraft:instant_damage 1 1 true
execute unless entity @s[nbt={ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100000,ShowParticles:0b}]}] run effect give @s minecraft:invisibility 100000 1 true
execute unless entity @s[nbt={ActiveEffects:[{Id:14b,ShowParticles:0b}]}] run say hi