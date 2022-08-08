summon leash_knot ~ ~ ~ {Tags:["middle_block","deadnow"]}
execute if entity @s[tag=barrel_place] run execute as @e[tag=middle_block,sort=nearest,limit=1] at @s run function swf:blocks/place_barrel
function minecraft:addons/place1
function minecraft:addons/place2
kill @e[tag=middle_block,sort=nearest,limit=1]