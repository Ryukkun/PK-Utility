data modify storage pk-utility: World-Spawn.Pos set from entity @s Pos
data modify storage pk-utility: World-Spawn.Rotation set from entity @s Rotation

# Message
tellraw @s [{"text":" ","color":"white","font":"uniform"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"text":"その場にスポーン地点を設置しました。"}]