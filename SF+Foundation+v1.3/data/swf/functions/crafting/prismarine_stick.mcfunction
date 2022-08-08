function swf:base/process

execute store result score @s forge_inv2 run data get block ~ ~-1 ~ Items[2].Count
execute store result score @s forge_inv3 run data get block ~ ~-1 ~ Items[3].Count
execute store result score @s forge_inv4 run data get block ~ ~-1 ~ Items[10].Count
execute store result score @s forge_inv5 run data get block ~ ~-1 ~ Items[11].Count
execute store result score @s forge_inv6 run data get block ~ ~-1 ~ Items[12].Count
execute store result score @s forge_inv7 run data get block ~ ~-1 ~ Items[18].Count
execute store result score @s forge_inv8 run data get block ~ ~-1 ~ Items[19].Count

scoreboard players remove @s forge_inv2 1
scoreboard players remove @s forge_inv3 1
scoreboard players remove @s forge_inv4 1
scoreboard players remove @s forge_inv5 1
scoreboard players remove @s forge_inv6 1
scoreboard players remove @s forge_inv7 1
scoreboard players remove @s forge_inv8 1

execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 21b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.21 air
execute store result block ~ ~-1 ~ Items[19].Count byte 1 run scoreboard players get @s forge_inv8
execute store result block ~ ~-1 ~ Items[18].Count byte 1 run scoreboard players get @s forge_inv7
execute store result block ~ ~-1 ~ Items[12].Count byte 1 run scoreboard players get @s forge_inv6
execute store result block ~ ~-1 ~ Items[11].Count byte 1 run scoreboard players get @s forge_inv5
execute store result block ~ ~-1 ~ Items[10].Count byte 1 run scoreboard players get @s forge_inv4
execute store result block ~ ~-1 ~ Items[3].Count byte 1 run scoreboard players get @s forge_inv3
execute store result block ~ ~-1 ~ Items[2].Count byte 1 run scoreboard players get @s forge_inv2
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 1b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.1 air

replaceitem block ~ ~-1 ~ container.15 minecraft:wooden_axe{Unbreakable:1b,Damage:3,nerf_attack:1b,nerf_mining:1b, HideFlags: 63, display: {Name: "{\"text\":\"Prismarine Stick\",\"italic\":false}"}} 1