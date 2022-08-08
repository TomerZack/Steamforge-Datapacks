# instant killing =======================================================================================================================================================
execute as @e[tag=deadnow] at @s run function swf:base/deadnow
#Forge
execute as @e[tag=craft_forge,tag=!forge_ready] at @s run tp @s ~ ~1 ~
execute as @e[tag=craft_forge,tag=!forge_ready] at @s run function swf:blocks/place_forge
execute as @e[tag=craft_forge,tag=forge_ready] run function swf:base/craft_forge
#Give forge =============================================================================================================================================================
clear @a[tag=give_forge] minecraft:command_block_minecart
tag @e[tag=give_forge] remove give_forge

execute as @e[nbt={Inventory:[{tag:{display:{Name:"\"\""}}}]}] if entity @s[nbt={Inventory:[{tag:{display:{Name:"\"\""}}}]}] run clear @s minecraft:wooden_shovel{display:{Name:"\"\""}}
execute if entity @a[nbt={Inventory:[{tag:{clearnow:1}}]}] run function swf:base/clear_items

# Nerf Items ============================================================================================================================================================
effect give @e[nbt={SelectedItem:{tag:{nerf_mining:1b}}}] minecraft:mining_fatigue 1 1 true
effect give @e[nbt={SelectedItem:{tag:{nerf_attack:1b}}}] minecraft:weakness 1 3 true

# Regular Items click detect
tag @e[tag=clicking_tag] remove clicking_tag
# right clicking ========================================================================================================================================================
execute at @e[tag=clickred,tag=clickno] run tag @e[type=minecraft:villager,limit=1,sort=nearest,tag=vrclick] add deadnow
tag @a[tag=clickno] remove clickred
tag @a add clickno
execute as @e[nbt={SelectedItem:{tag:{right_detect:1b}}}] at @s anchored eyes run tag @s remove clickno
execute as @e[tag=!clickred,nbt={SelectedItem:{tag:{right_detect:1b}}}] at @s anchored eyes run summon villager ^ ^ ^1 {NoGravity:1b,Silent:1b,NoAI:1b,CareerLevel:1,Tags:["vrclick"],ActiveEffects:[{Id:11b,Amplifier:150b,Duration:1000000,ShowParticles:0b},{Id:10b,Amplifier:15b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Offers:{}}
execute as @e[tag=clickred,nbt={SelectedItem:{tag:{right_detect:1b}}}] at @s run tp @e[tag=vrclick,limit=1,sort=nearest] ^ ^ ^2.1

execute as @e[scores={villclick=1..}] at @s run function swf:clicks/villclick
execute as @e[nbt={SelectedItem:{tag:{right_detect:1b}}}] at @s anchored eyes run tag @s add clickred
scoreboard players set @e[tag=clickno] villclick 0

#Barrel Broke============================================================================================================================================================
execute as @e[tag=barrel_vill] at @s run function swf:blocks/stone_barrel
