# 同一CP
scoreboard players operation $CP-X1 Ryukkun.X = @s Ryukkun.X
scoreboard players operation $CP-Y1 Ryukkun.X = @s Ryukkun.Y
scoreboard players operation $CP-Z1 Ryukkun.X = @s Ryukkun.Z

# Get Pos
execute store result score @s Ryukkun.X run data get entity @s Pos[0]
execute store result score @s Ryukkun.Y run data get entity @s Pos[1] 100000
execute store result score @s Ryukkun.Z run data get entity @s Pos[2]
execute store result score @s Ryukkun.F-Yaw run data get entity @s Rotation[0]
execute store result score @s Ryukkun.F-Pitch run data get entity @s Rotation[1]

# 同一CP
execute if score @s Ryukkun.X = $CP-X1 Ryukkun.X if score @s Ryukkun.Y = $CP-Y1 Ryukkun.X if score @s Ryukkun.Z = $CP-Z1 Ryukkun.X run tag @s add Ryukkun.Match-CP

# Message
tellraw @s [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"text":"チェックポイント","color":"yellow","bold": true},{"text":"を更新しました！","color":"white"}]

# Effect
playsound minecraft:entity.chicken.egg master @s[tag=Ryukkun.Match-CP] ~ ~ ~ 0.7 2 0.7
playsound minecraft:entity.firework_rocket.launch master @s[tag=!Ryukkun.Match-CP] ~ ~ ~ 0.7 1 0.7
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.07 30 normal @s[tag=!Ryukkun.Match-CP]

tag @s remove Ryukkun.Match-CP