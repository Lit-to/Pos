#> pos:block
tag @s add own
scoreboard objectives remove pos___
scoreboard objectives add pos___ dummy
scoreboard players set count pos___ 0
execute as @e[type=armor_stand,tag=pos] at @s run function pos:_block
tellraw @s [{"score":{"name": "count","objective": "pos___"}},{"text": "個のチェストを確認しました。"}]
scoreboard objectives remove pos___
tag @a remove own
