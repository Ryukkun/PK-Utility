# tp用 アマスタ 召喚　いでよ！ うぉぉぉぉぉおぉおぉぉおおぉいおあｊを！！
summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,NoGravity:1b,Invisible:1b,Tags:["R.CP-AS","R.Born"]}
scoreboard players operation @e[tag=R.Born,distance=..0.0001,limit=1] R.PL-Num = @s R.PL-Num


# Pos Rotation 代入
data merge storage pk-utility: {CP:{Pos:[0.0d,0.0d,0.0d],Success:0b}}
execute store result storage pk-utility: CP.Pos[0] double 1 run scoreboard players get @s R.X
execute store result storage pk-utility: CP.Pos[1] double 0.00001 run scoreboard players get @s R.Y
execute store result storage pk-utility: CP.Pos[2] double 1 run scoreboard players get @s R.Z
execute store result entity @e[tag=R.Born,limit=1,distance=..0.0001] Rotation[0] float 1 run scoreboard players get @s R.F-Yaw
execute store result entity @e[tag=R.Born,limit=1,distance=..0.0001] Rotation[1] float 1 run scoreboard players get @s R.F-Pitch
data modify entity @e[tag=R.Born,limit=1,distance=..0.0001] Pos set from storage pk-utility: CP.Pos

# 果たしてアマスタは 読み込み範囲外に 居るのか居ないのかい どっちなんだい！ いてくれー
execute store success storage pk-utility: CP.Success byte 1 run tp @s @e[tag=R.Born,limit=1]

# いるぅー！！
execute if data storage pk-utility: {CP:{Success:1b}} at @s run kill @e[tag=R.Born]
execute if data storage pk-utility: {CP:{Success:1b}} at @s run tp @s ~0.5 ~ ~0.5
execute if data storage pk-utility: {CP:{Success:1b}} run tp @s @s

# いないぃー！
execute if data storage pk-utility: {CP:{Success:0b}} run function pk-utility:cp/tp/2
execute if data storage pk-utility: {CP:{Success:0b}} run tag @e[tag=R.Born] remove R.Born

# Tags
scoreboard players set @s R.Stop-CP-Time -5
tag @s add R.On-Diamond-Lock
tag @s add R.On-SetSign-Lock
tag @s add R.On-TAStart-Lock