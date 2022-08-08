function minecraft:addons/villtag1
function minecraft:addons/villtag2
tag @e[nbt={SelectedItem:{id:"minecraft:water_bucket"}},scores={villclick=1..}] add clicking_tag
tag @e[nbt={SelectedItem:{id:"minecraft:lava_bucket"}},scores={villclick=1..}] add clicking_tag
tag @e[nbt={SelectedItem:{id:"minecraft:bucket"}},scores={villclick=1..}] add clicking_tag
tag @e[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit"}},scores={villclick=1..}] add clicking_tag

execute as @e[tag=clicking_tag,scores={villclick=1..}] at @s anchored eyes run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["right_action"]}
execute as @e[tag=clicking_tag,scores={villclick=1..}] at @s anchored eyes run tp @e[tag=right_action,limit=1,sort=nearest] ^ ^ ^0.5 ~ ~
execute as @e[tag=clicking_tag,scores={villclick=1..},nbt={SelectedItem:{id:"minecraft:water_bucket"}}] at @s anchored eyes run scoreboard players set @e[tag=right_action,sort=nearest,limit=1] fluid_type 1
execute as @e[tag=clicking_tag,scores={villclick=1..},nbt={SelectedItem:{id:"minecraft:lava_bucket"}}] at @s anchored eyes run scoreboard players set @e[tag=right_action,sort=nearest,limit=1] fluid_type 2

execute as @e[nbt={SelectedItem:{tag:{right_detect:1b}}},scores={villclick=1..}] at @s anchored eyes run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["right_action"]}
execute as @e[nbt={SelectedItem:{tag:{right_detect:1b}}},scores={villclick=1..}] at @s anchored eyes run tp @e[tag=right_action,limit=1,sort=nearest] ^ ^ ^0.5 ~ ~
function minecraft:addons/villclick1
function minecraft:addons/villclick2
function minecraft:addons/villclick3
execute as @e[nbt={SelectedItem:{id:"minecraft:bucket"}},scores={villclick=1..}] at @s anchored eyes run tag @e[tag=right_action,limit=1,distance=0..2,sort=nearest] add empty_bucket
execute as @e[tag=clicking_tag,nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit"}}] at @s anchored eyes run tag @e[tag=right_action,distance=0..2,sort=nearest,limit=1] add popped_chorus
execute as @e[nbt={SelectedItem:{tag:{right_detect:1b}}},scores={villclick=1..}] at @s anchored eyes run function swf:clicks/action_tags