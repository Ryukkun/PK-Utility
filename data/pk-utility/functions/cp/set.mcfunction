# Get Pos
execute store result score @s Ryukkun.X run data get entity @s Pos[0]
execute store result score @s Ryukkun.Y run data get entity @s Pos[1] 100000
execute store result score @s Ryukkun.Z run data get entity @s Pos[2]
execute store result score @s Ryukkun.F-Yaw run data get entity @s Rotation[0]
execute store result score @s Ryukkun.F-Pitch run data get entity @s Rotation[1]

# Message
tellraw @s [{"text":" ","color":"white"},{"nbt":"Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"text":"チェックポイント","color":"yellow","bold": true},{"text":"を更新しました！","color":"white"}]

# Effect
playsound ui.button.click master @s ~ ~ ~ 1 1 1