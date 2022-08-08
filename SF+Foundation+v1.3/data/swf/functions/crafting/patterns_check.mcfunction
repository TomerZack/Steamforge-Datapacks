execute as @s[tag=craftnow,scores={craft_forge=4..}] at @s store result score @s slots_count run data get block ~ ~-1 ~ Items[8].Slot
tag @s[scores={slots_count=..13}] remove 5sclean
tag @s[scores={slots_count=13..}] add 5sclean
tag @s[scores={slots_count=..9}] remove 1lsclean
tag @s[scores={slots_count=9..}] add 1lsclean

execute as @s[tag=craftnow,scores={craft_forge=4..},tag=5sclean] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 11b, id: "minecraft:polished_andesite"}]} run function swf:crafting/andesite
execute as @s[tag=craftnow,scores={craft_forge=4..},tag=5sclean] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 11b, id: "minecraft:polished_granite"}]} run function swf:crafting/granite
execute as @s[tag=craftnow,scores={craft_forge=4..},tag=5sclean] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 11b, id: "minecraft:polished_diorite"}]} run function swf:crafting/diorite

execute as @s[tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 1b, id: "minecraft:cobblestone"}, {Slot: 2b, id: "minecraft:string"}, {Slot: 3b, id: "minecraft:cobblestone"}, {Slot: 10b, id: "minecraft:cobblestone"}, {Slot: 11b, id: "minecraft:stick"}, {Slot: 12b, id: "minecraft:cobblestone"}, {Slot: 20b, id: "minecraft:stick"}]} run function swf:crafting/hammer

execute as @s[tag=!no_hammer,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 1b, id: "minecraft:iron_ingot"}, {Slot: 3b, id: "minecraft:iron_ingot"}, {Slot: 10b, id: "minecraft:iron_ingot"}, {Slot: 12b, id: "minecraft:iron_ingot"}, {Slot: 19b, id: "minecraft:iron_ingot"}, {Slot: 21b, id: "minecraft:iron_ingot"}]} run function swf:crafting/iron_tube

execute as @s[tag=craftnow,scores={craft_forge=4..},tag=1lsclean] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 1b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1b, HideFlags: 63, display: {Name: "{\"text\":\"Iron Tube\",\"italic\":false}"}, Damage: 2, nerf_mining: 1b}}, {Slot: 2b, id: "minecraft:wooden_shovel", tag: {Unbreakable: 1b, HideFlags: 63, display: {Name: "{\"text\":\"Iron Tube\",\"italic\":false}"}, Damage: 2, nerf_mining: 1b}}]} run function swf:crafting/iron_tube_stack

execute as @s[tag=!no_hammer,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 1b, id: "minecraft:white_concrete_powder"}, {Slot: 10b, id: "minecraft:clay_ball"}, {Slot: 12b, id: "minecraft:iron_ingot"}, {Slot: 19b, id: "minecraft:water_bucket"}, {Slot: 21b, id: "minecraft:stick"}]} run function swf:crafting/spatula_and_mortar

execute as @s[tag=!no_mortaring,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:purpur_slab"}, {Slot: 11b, id: "minecraft:purpur_slab"}]} run function swf:crafting/slab_purpur
execute as @s[tag=!no_mortaring,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:brick_slab"}, {Slot: 11b, id: "minecraft:brick_slab"}]} run function swf:crafting/slab_bricks
execute as @s[tag=!no_mortaring,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:stone_brick_slab"}, {Slot: 11b, id: "minecraft:stone_brick_slab"}]} run function swf:crafting/slab_stone_bricks
execute as @s[tag=!no_mortaring,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:nether_brick_slab"}, {Slot: 11b, id: "minecraft:nether_brick_slab"}]} run function swf:crafting/slab_nether_bricks
execute as @s[tag=!no_mortaring,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:cobblestone_slab"}, {Slot: 11b, id: "minecraft:cobblestone_slab"}]} run function swf:crafting/slab_cobblestone
execute as @s[tag=!no_mortaring,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:prismarine_brick_slab"}, {Slot: 11b, id: "minecraft:prismarine_brick_slab"}]} run function swf:crafting/slab_prismarine_bricks
execute as @s[tag=!no_mortaring,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:dark_prismarine_slab"}, {Slot: 11b, id: "minecraft:dark_prismarine_slab"}]} run function swf:crafting/slab_dark_prismarine

execute as @s[tag=craftnow,tag=!no_hammer,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:prismarine_shard"}, {Slot: 3b, id: "minecraft:prismarine_crystals"}, {Slot: 10b, id: "minecraft:prismarine_shard"}, {Slot: 11b, id: "minecraft:stick"}, {Slot: 12b, id: "minecraft:prismarine_shard"}, {Slot: 19b, id: "minecraft:prismarine_crystals"}, {Slot: 20b, id: "minecraft:prismarine_shard"}]} run function swf:crafting/prismarine_stick

execute as @s[tag=craftnow,scores={craft_forge=4..},tag=1lsclean] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 1b, id: "minecraft:wooden_axe", tag: {nerf_attack: 1b, Unbreakable: 1b, HideFlags: 63, display: {Name: "{\"text\":\"Prismarine Stick\",\"italic\":false}"}, Damage: 3, nerf_mining: 1b}}, {Slot: 2b, id: "minecraft:wooden_axe", tag: {nerf_attack: 1b, Unbreakable: 1b, HideFlags: 63, display: {Name: "{\"text\":\"Prismarine Stick\",\"italic\":false}"}, Damage: 3, nerf_mining: 1b}}]} run function swf:crafting/prismarine_stick_stack

execute as @s[tag=!no_hammer,tag=craftnow,scores={craft_forge=4..},tag=5sclean] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 11b, id: "minecraft:quartz_block"}]} run function swf:crafting/quartz_crash

execute as @s[tag=!no_hammer,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 1b, id: "minecraft:stone"}, {Slot: 3b, id: "minecraft:stone"}, {Slot: 10b, id: "minecraft:stone"}, {Slot: 12b, id: "minecraft:stone"}, {Slot: 19b, id: "minecraft:stone"}, {Slot: 20b, id: "minecraft:stone"}, {Slot: 21b, id: "minecraft:stone"}]} run function swf:crafting/stone_barrel

execute as @s[tag=!no_hammer,tag=craftnow,scores={craft_forge=4..}] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 2b, id: "minecraft:oak_planks"}, {Slot: 10b, id: "minecraft:glass"}, {Slot: 12b, id: "minecraft:glass"}, {Slot: 19b, id: "minecraft:glass"}, {Slot: 21b, id: "minecraft:glass"}]} run function swf:crafting/glass_jar

execute as @s[tag=craftnow,scores={craft_forge=4..},tag=1lsclean] at @s if block ~ ~-1 ~ minecraft:trapped_chest[type=left]{Items: [{Slot: 1b, id: "minecraft:wooden_axe", tag: {nerf_attack: 1b, Unbreakable: 1b, right_detect: 1b, HideFlags: 63, display: {Name: "{\"italic\":false,\"text\":\"Glass Jar\"}"}, glass_jar: 1b, Damage: 4, nerf_mining: 1b}}, {Slot: 2b, id: "minecraft:wooden_axe", tag: {nerf_attack: 1b, Unbreakable: 1b, right_detect: 1b, HideFlags: 63, display: {Name: "{\"italic\":false,\"text\":\"Glass Jar\"}"}, glass_jar: 1b, Damage: 4, nerf_mining: 1b}}]} run function swf:crafting/glass_jar_stack

function minecraft:addons/craft1
function minecraft:addons/craft2
function minecraft:addons/craft3