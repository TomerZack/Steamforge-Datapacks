function swf:base/process

execute store result score @s res_stack run data get block ~ ~-1 ~ Items[1].Count
execute store result score @s stack_amount run data get block ~ ~-1 ~ Items[2].Count
scoreboard players operation @s res_stack += @s stack_amount

replaceitem block ~ ~-1 ~ container.15 minecraft:wooden_axe{Damage:4,Unbreakable:1b,HideFlags:63,glass_jar:1b,nerf_attack:1b,right_detect:1b,nerf_mining:1b, display: {Name: "{\"italic\":false,\"text\":\"Glass Jar\"}"}} 1
execute store result block ~ ~-1 ~ Items[15].Count byte 1 run scoreboard players get @s res_stack

execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 21b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.21 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 20b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.20 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 19b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.19 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 12b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.12 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 11b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.11 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 10b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.10 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 3b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.3 air
replaceitem block ~ ~-1 ~ container.2 air
replaceitem block ~ ~-1 ~ container.1 air

