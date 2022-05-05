# tp用 アマスタ 召喚　いでよ！ うぉぉぉぉぉおぉおぉぉおおぉいおあｊを！！
summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,NoGravity:1b,Invisible:1b,Tags:["R.CP-AS","R.Born"]}
scoreboard players operation @e[tag=R.Born,distance=..0.0001,limit=1] R.PL-Num = @s R.PL-Num
tag @e[tag=R.CP-AS] remove R.Born

# Pos Rotation 代入
data merge storage pk-utility: {CP:{Success:0b}}
execute as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num run data modify entity @s Rotation set from storage pk-utility: World-Spawn.Rotation
execute as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num run data modify entity @s Pos set from storage pk-utility: World-Spawn.Pos

# 果たしてアマスタは 読み込み範囲外に 居るのか居ないのかい どっちなんだい！ いてくれー
execute store success storage pk-utility: CP.Success byte 1 at @e[tag=R.CP-AS] if score @e[tag=R.CP-AS,sort=nearest,limit=1,distance=..0.0001] R.PL-Num = @s R.PL-Num run tp @s ~ ~ ~ ~ ~

# いるぅー！！
execute if data storage pk-utility: {CP:{Success:1b}} at @s as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num run kill @s
execute if data storage pk-utility: {CP:{Success:1b}} run tp @s @s

# いないぃー！
execute if data storage pk-utility: {CP:{Success:0b}} run function pk-utility:settings/world-spawn/tp/2