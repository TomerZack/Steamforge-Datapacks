tag @e[type=minecraft:shulker_bullet,limit=1,sort=nearest] add deadnow
give @a[sort=nearest,nbt={SelectedItem:{tag:{glass_jar:1b}}},limit=1] minecraft:wooden_axe{Damage:6,Unbreakable:1b,HideFlags:63,shb_in_a_jar:1b,nerf_attack:1b,right_detect:1b,nerf_mining:1b, display: {Name: "{\"italic\":false,\"color\":\"yellow\",\"text\":\"Shulker Bullet In A Jar\"}"}} 1
clear @a[sort=nearest,nbt={SelectedItem:{tag:{glass_jar:1b}}},limit=1] minecraft:wooden_axe{Damage:4,Unbreakable:1b,HideFlags:63,glass_jar:1b,nerf_attack:1b,right_detect:1b,nerf_mining:1b, display: {Name: "{\"italic\":false,\"text\":\"Glass Jar\"}"}} 1
kill @s[tag=right_action]
