#> pos:_block
execute unless block ~ ~ ~ #pos:check run tellraw @a[tag=own] [{"nbt":"Pos","entity":"@s","color": "red"},{"text": "に指定のブロックがありません。","color": "red"}]
data modify storage pos: out.failed append from entity @s Pos
execute unless block ~ ~ ~ #pos:check run kill @s[type=armor_stand]
execute if block ~ ~ ~ #pos:check run scoreboard players add count pos___ 1


