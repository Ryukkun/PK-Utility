# 同一CP
scoreboard players operation $CP-X1 R.X = @s R.X
scoreboard players operation $CP-Y1 R.X = @s R.Y
scoreboard players operation $CP-Z1 R.X = @s R.Z

# Get Pos
execute store result score @s R.X run data get entity @s Pos[0]
execute store result score @s R.Y run data get entity @s Pos[1] 100000
execute store result score @s R.Z run data get entity @s Pos[2]
execute store result score @s R.F-Yaw run data get entity @s Rotation[0]
execute store result score @s R.F-Pitch run data get entity @s Rotation[1]

# 同一CP
execute if score @s R.X = $CP-X1 R.X if score @s R.Y = $CP-Y1 R.X if score @s R.Z = $CP-Z1 R.X run tag @s add R.Match-CP

# Message
execute if data storage pk-utility: {Settings:{CP:{Set:{Message:1b}}}} run tellraw @s [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"text":"チェックポイント","color":"yellow","bold": true},{"text":"を更新しました！","color":"white"}]

# Effect
execute if data storage pk-utility: {Settings:{CP:{Set:{Sound:1b}}}} run playsound minecraft:entity.chicken.egg master @s[tag=R.Match-CP] ~ ~ ~ 0.7 2 0.7
execute if data storage pk-utility: {Settings:{CP:{Set:{Sound:1b}}}} run playsound minecraft:entity.firework_rocket.launch master @s[tag=!R.Match-CP] ~ ~ ~ 0.7 1 0.7
execute if data storage pk-utility: {Settings:{CP:{Set:{Particle:1b}}}} run particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.07 30 normal @s[tag=!R.Match-CP]

tag @s remove R.Match-CP