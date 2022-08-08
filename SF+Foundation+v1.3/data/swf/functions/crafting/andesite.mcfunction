function swf:base/process

execute store result score @s forge_inv5 run data get block ~ ~-1 ~ Items[11].Count
scoreboard players remove @s forge_inv5 1

execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 21b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.21 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 20b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.20 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 19b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.19 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 12b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.12 air
execute store result block ~ ~-1 ~ Items[11].Count byte 1 run scoreboard players get @s forge_inv5
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 10b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.10 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 3b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.3 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 2b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.2 air
execute if block ~ ~-1 ~ minecraft:trapped_chest{Items:[{Slot: 1b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1, HideFlags: 63, display: {Name: "\"\""}, Damage: 59}}]} run replaceitem block ~ ~-1 ~ container.1 air

replaceitem block ~ ~-1 ~ container.15 minecraft:andesite 1