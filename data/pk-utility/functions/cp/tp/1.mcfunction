# tp用 アマスタ 召喚　いでよ！ うぉぉぉぉぉおぉおぉぉおおぉいおあｊを！！
summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,NoGravity:1b,Invisible:1b,Tags:["R.CP-AS","R.Born"]}
scoreboard players operation @e[tag=R.Born,distance=..0.0001,limit=1] R.PL-Num = @s R.PL-Num
tag @e[tag=R.CP-AS] remove R.Born

# Pos Rotation 代入
data merge storage pk-utility: {CP:{Pos:[0.0d,0.0d,0.0d],Success:0b}}
execute store result storage pk-utility: CP.Pos[0] double 1 run scoreboard players get @s R.X
execute store result storage pk-utility: CP.Pos[1] double 0.00001 run scoreboard players get @s R.Y
execute store result storage pk-utility: CP.Pos[2] double 1 run scoreboard players get @s R.Z
execute as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num store result entity @s Rotation[0] float 1 run scoreboard players get @p R.F-Yaw
execute as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num store result entity @s Rotation[1] float 1 run scoreboard players get @p R.F-Pitch
execute as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num run data modify entity @s Pos set from storage pk-utility: CP.Pos

# 果たしてアマスタは 読み込み範囲外に 居るのか居ないのかい どっちなんだい！ いてくれー
execute store success storage pk-utility: CP.Success byte 1 at @e[tag=R.CP-AS] if score @e[tag=R.CP-AS,sort=nearest,limit=1,distance=..0.0001] R.PL-Num = @s R.PL-Num run tp @s ~ ~ ~ ~ ~

# いるぅー！！
execute if data storage pk-utility: {CP:{Success:1b}} at @s as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num run kill @s
execute if data storage pk-utility: {CP:{Success:1b}} at @s run tp @s ~0.5 ~ ~0.5
execute if data storage pk-utility: {CP:{Success:1b}} run tp @s @s

# いないぃー！
execute if data storage pk-utility: {CP:{Success:0b}} run function pk-utility:cp/tp/2

# Tags
tag @s add R.On-Diamond-Lock
tag @s add R.On-SetSign-Lock
tag @s add R.On-SetSign