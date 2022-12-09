#> pos:set
#declare storage pos:
execute if data storage pos: {in:[]} run tellraw @s [{"text": "位置登録がされていません。詳しくはREADMEをお読みください。"}]
execute unless data storage pos: {in:[]} run function pos:_loop

