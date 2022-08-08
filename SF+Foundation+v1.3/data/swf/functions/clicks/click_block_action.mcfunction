execute if block ^ ^ ^1 minecraft:grass_block if entity @s[tag=jar_action] run function swf:clicks/grass_jarring
execute if block ^ ^ ^1 minecraft:mycelium if entity @s[tag=jar_action] run function swf:clicks/mycelium_jarring
execute if block ^ ^ ^1 minecraft:podzol if entity @s[tag=jar_action] run function swf:clicks/podzol_jarring
execute if block ^ ^ ^1 minecraft:dirt if entity @s[tag=podzol_jar_action] run function swf:clicks/podzol_unjarring
execute if block ^ ^ ^1 minecraft:dirt if entity @s[tag=grass_jar_action] run function swf:clicks/grass_unjarring
execute if block ^ ^ ^1 minecraft:dirt if entity @s[tag=mycelium_jar_action] run function swf:clicks/mycelium_unjarring
execute if entity @s[tag=placeb] run function swf:blocks/place_block_action
scoreboard players set @a villclick 0
kill @e[tag=right_action,distance=0..0.5]