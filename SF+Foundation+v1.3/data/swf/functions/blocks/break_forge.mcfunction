execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:trapped_chest"}}]
execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=1,distance=0..2,nbt={Item:{id:"minecraft:wooden_shovel",tag:{Damage:1,Unbreakable:1}}}]
execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=13,distance=0..2,nbt={Item:{id:"minecraft:wooden_shovel",tag:{Damage:59,Unbreakable:1}}}]
execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=1,distance=0..2,nbt={Item:{id:"minecraft:iron_pickaxe",tag:{display:{Name: "{\"text\":\"Mining & Carving\",\"italic\":false}"},Unbreakable:1}}}]
execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=1,distance=0..2,nbt={Item:{id:"minecraft:iron_axe",tag:{display:{Name: "{\"text\":\"Chopping & Breaking\",\"italic\":false}"},Unbreakable:1}}}]
execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=1,distance=0..2,nbt={Item:{id:"minecraft:shears",tag:{display:{Name: "{\"text\":\"Cutting & Pruning\",\"italic\":false}"},Unbreakable:1}}}]
execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=1,distance=0..2,nbt={Item:{id:"minecraft:wooden_shovel",tag:{display:{Name: "{\"text\":\"Smashing & Crushing\",\"italic\":false}"},Unbreakable:1b}}}]
execute at @s unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[type=minecraft:item,limit=1,distance=0..2,nbt={Item:{id:"minecraft:wooden_axe",tag:{display:{Name: "{\"text\":\"Mortaring & Covering\",\"italic\":false}"},Unbreakable:1b}}}]
execute at @s if block ~ ~-1 ~ air run kill @s
execute at @s if block ~ ~-1 ~ air run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:"{\"text\":\"Crafting Forge\",\"italic\":false}"},EntityTag:{Pose: {Head: [0.0f, 0.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f]},CustomNameVisible:0b,Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["craft_forge"],ArmorItems:[{},{},{},{id:"minecraft:command_block_minecart",Count:1b}],CustomName:"{\"text\":\"Crafting Forge\"}"}}}}

execute at @s[tag=!no_hammer] unless block ~ ~-1 ~ minecraft:trapped_chest run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b, HideFlags: 63, display: {Name: "{\"text\":\"Sledge Hammer\",\"italic\":false}"},Damage:3,nerf_mining:1b}}}
execute at @s[tag=!no_hammer] unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[tag=craft_hammer,limit=1,distance=0..1]

execute at @s[tag=!no_mortaring] unless block ~ ~-1 ~ minecraft:trapped_chest run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,Damage:1,nerf_attack:1b,nerf_mining:1b, HideFlags: 63, display: {Name: "{\"text\":\"Spatula And Mortar\",\"italic\":false}"}}}}
execute at @s[tag=!no_mortaring] unless block ~ ~-1 ~ minecraft:trapped_chest run kill @e[tag=craft_mortaring,limit=1,distance=0..1]
