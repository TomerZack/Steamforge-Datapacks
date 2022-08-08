tag @e[tag=barrel_vill,scores={property_1=..1023}] add deadnow
execute if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ air
summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:wooden_shovel", Count: 1b, tag: {nerf_attack: 1b, Unbreakable: 1b, right_detect: 1b, HideFlags: 61, display: {Name: "{\"italic\":false,\"color\":\"yellow\",\"text\":\"Stone Barrel\"}"}, Damage: 7, stone_barrel: 1b, nerf_mining: 1b}}}

execute as @e[scores={fluid_mb=1..},limit=1,sort=nearest,distance=0..0.5] run data merge entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{stone_barrel:1b}}},limit=1] {Item:{tag:{AttributeModifiers:[{AttributeName:"general.fluid_mb",Name:"Fluid mb",Amount:0,Operation:0,UUIDLeast:4800,UUIDMost:4800,Slot:"offhand"}]}}}
execute as @e[scores={fluid_mb=1..},limit=1,sort=nearest,distance=0..0.5] store result entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{stone_barrel:1b}}},limit=1] Item.tag.AttributeModifiers[0].Amount short 1 run scoreboard players get @s fluid_mb
execute as @e[scores={fluid_mb=1..},limit=1,sort=nearest,distance=0..0.5] store result entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{stone_barrel:1b}}},limit=1] Item.tag.fluid_type byte 1 run scoreboard players get @s fluid_type
execute as @e[scores={fluid_mb=1..},limit=1,sort=nearest,distance=0..0.5] run kill @e[tag=visual_fluid,limit=1,distance=0..0.7,sort=nearest]

execute as @e[scores={fluid_mb=1..fluid_type=1},limit=1,sort=nearest,distance=0..0.5] run data merge entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{stone_barrel:1b}}},limit=1] {Item:{tag:{fluid_type:1b,display:{Lore:["Water"]}}}}
execute as @e[scores={fluid_mb=1..fluid_type=2},limit=1,sort=nearest,distance=0..0.5] run data merge entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{stone_barrel:1b}}},limit=1] {Item:{tag:{fluid_type:2b,display:{Lore:["Lava"]}}}}

kill @e[type=minecraft:item,sort=nearest,limit=1,distance=0..3,nbt={Item: {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: "32996882-6f44-463b-80b4-f1696151aa2b", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDEyNjk1ODRmNjI5MjI3NzEzMTA3YjRlMGEwMmRkNjVkZGZlNzgwZTdjNzExOGNiMWVjMjI3NWM1MTRjYzk1ZCJ9fX0="}]}}}}}]
kill @e[tag=stone_barrel,distance=0..0.5,limit=1,sort=nearest]