#> pos:set
#declare storage pos:
scoreboard objectives remove pos___
scoreboard objectives add pos___ dummy
scoreboard players set count pos___ 0
execute if data storage pos: {in:[]} run function pos:set/null
execute unless data storage pos: {in:[]} run function pos:_loop
execute if data storage pos: {out:-1} store result storage pos: out int 1 run scoreboard players get count pos___
scoreboard objectives remove pos___
