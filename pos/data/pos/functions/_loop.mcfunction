#> pos:_loop
summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["pos","now"]}
data modify entity @e[type=armor_stand,tag=now,sort=nearest,limit=1] Pos set from storage pos: in[0]
execute as @e[type=armor_stand,tag=now,sort=nearest,limit=1] at @s run tp @s ~0.5 ~ ~0.5
data remove storage pos: in[0]
tag @e[type=armor_stand,tag=now] remove now
execute unless data storage pos: {in:[]} run function pos:_loop


