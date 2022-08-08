# Inv 1 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[1].Slot

execute if score @s forge_process matches 2..4 run replaceitem block ~ ~-1 ~ container.1 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 3..4 run replaceitem block ~ ~-1 ~ container.2 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 4 run replaceitem block ~ ~-1 ~ container.3 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 2 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[2].Slot

execute if score @s forge_process matches 3..4 run replaceitem block ~ ~-1 ~ container.2 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 4 run replaceitem block ~ ~-1 ~ container.3 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 3 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[3].Slot

execute if score @s forge_process matches 4 run replaceitem block ~ ~-1 ~ container.3 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 4 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[10].Slot

execute if score @s forge_process matches 11..13 run replaceitem block ~ ~-1 ~ container.10 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 12..13 run replaceitem block ~ ~-1 ~ container.11 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 13 run replaceitem block ~ ~-1 ~ container.12 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 5 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[11].Slot

execute if score @s forge_process matches 12..13 run replaceitem block ~ ~-1 ~ container.11 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 13 run replaceitem block ~ ~-1 ~ container.12 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 6 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[12].Slot

execute if score @s forge_process matches 13 run replaceitem block ~ ~-1 ~ container.12 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 7 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[18].Slot

execute if score @s forge_process matches 20..22 run replaceitem block ~ ~-1 ~ container.19 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 21..22 run replaceitem block ~ ~-1 ~ container.20 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 22 run replaceitem block ~ ~-1 ~ container.21 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 8 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[19].Slot

execute if score @s forge_process matches 21..22 run replaceitem block ~ ~-1 ~ container.20 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
execute if score @s forge_process matches 22 run replaceitem block ~ ~-1 ~ container.21 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}
# Inv 9 ======================
execute store result score @s forge_process run data get block ~ ~-1 ~ Items[20].Slot

execute if score @s forge_process matches 22 run replaceitem block ~ ~-1 ~ container.21 minecraft:wooden_shovel{Unbreakable:1,Damage:59, display: {Name: "\"\""},HideFlags:63}