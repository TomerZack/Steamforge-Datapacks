summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["stone_barrel"],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
setblock ~ ~ ~ minecraft:player_head[rotation=0]{Owner: {Id: "32996882-6f44-463b-80b4-f1696151aa2b", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDEyNjk1ODRmNjI5MjI3NzEzMTA3YjRlMGEwMmRkNjVkZGZlNzgwZTdjNzExOGNiMWVjMjI3NWM1MTRjYzk1ZCJ9fX0="}]}}} replace
summon villager ~ ~-0.45 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000000f,Tags:["barrel_vill"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1000000}],Offers:{}}

execute store result score @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] fluid_mb run data get entity @e[nbt={SelectedItem:{tag:{right_detect:1b,stone_barrel:1b}}},limit=1,sort=nearest] SelectedItem.tag.AttributeModifiers[0].Amount
execute store result score @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] fluid_type run data get entity @e[nbt={SelectedItem:{tag:{right_detect:1b,stone_barrel:1b}}},limit=1,sort=nearest] SelectedItem.tag.fluid_type
execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=1..}] run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:1,Tags:["set_visual"]}
execute if entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=1..}] run tag @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest,scores={fluid_mb=1..}] add fluid_full

execute store result score @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] property_1 run data get entity @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] Pos[1] 10000
scoreboard players operation @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] property_1 += @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] fluid_mb
execute store result entity @e[tag=set_visual,sort=nearest,limit=1,distance=0..1] Pos[1] double 0.0001 run scoreboard players get @e[tag=stone_barrel,limit=1,distance=0..1,sort=nearest] property_1

execute as @e[tag=stone_barrel,distance=0..1,limit=1,sort=nearest,scores={fluid_mb=1..fluid_type=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["waterbp","visual_fluid"],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @e[tag=stone_barrel,distance=0..1,limit=1,sort=nearest,scores={fluid_mb=1..fluid_type=2}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["lavabp","visual_fluid"],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @e[tag=set_visual,limit=1,sort=nearest,distance=0..1] at @s run tp @e[tag=visual_fluid,limit=1,sort=nearest,distance=0..1] ~ ~ ~

replaceitem entity @e[nbt={SelectedItem:{id:"minecraft:wooden_shovel",tag:{stone_barrel:1b}}},scores={villclick=1..},limit=1,sort=nearest] weapon.mainhand minecraft:air
kill @s