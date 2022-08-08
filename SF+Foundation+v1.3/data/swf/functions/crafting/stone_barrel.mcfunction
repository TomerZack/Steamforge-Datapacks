function swf:base/process

execute store result score @s forge_inv1 run data get block ~ ~-1 ~ Items[1].Count
execute store result score @s forge_inv3 run data get block ~ ~-1 ~ Items[3].Count
execute store result score @s forge_inv4 run data get block ~ ~-1 ~ Items[10].Count
execute store result score @s forge_inv6 run data get block ~ ~-1 ~ Items[12].Count
execute store result score @s forge_inv7 run data get block ~ ~-1 ~ Items[18].Count
execute store result score @s forge_inv8 run data get block ~ ~-1 ~ Items[19].Count
execute store result score @s forge_inv9 run data get block ~ ~-1 ~ Items[20].Count

scoreboard players remove @s forge_inv1 1
scoreboard players remove @s forge_inv3 1
scoreboard players remove @s forge_inv4 1
scoreboard players remove @s forge_inv6 1
scoreboard players remove @s forge_inv7 1
scoreboard players remove @s forge_inv8 1
scoreboard players remove @s forge_inv9 1

execute store result block ~ ~-1 ~ Items[20].Count byte 1 run scoreboard players get @s forge_inv9
execute store result block ~ ~-1 ~ Items[19].Count byte 1 run scoreboard players get @s forge_inv8
execute store result block ~ ~-1 ~ Items[18].Count byte 1 run scoreboard players get @s forge_inv7
execute store result block ~ ~-1 ~ Items[12].Count byte 1 run scoreboard players get @s forge_inv6
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 11b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.11 air
execute store result block ~ ~-1 ~ Items[10].Count byte 1 run scoreboard players get @s forge_inv4
execute store result block ~ ~-1 ~ Items[3].Count byte 1 run scoreboard players get @s forge_inv3
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 2b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.2 air
execute store result block ~ ~-1 ~ Items[1].Count byte 1 run scoreboard players get @s forge_inv1

replaceitem block ~ ~-1 ~ container.15 minecraft:wooden_shovel{Damage:7,Unbreakable:1b,HideFlags:63,stone_barrel:1b,nerf_attack:1b,right_detect:1b,nerf_mining:1b, display: {Name: "{\"italic\":false,\"color\":\"yellow\",\"text\":\"Stone Barrel\"}"}} 1
tag @s remove cp_done