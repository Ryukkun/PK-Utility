# tp用 アマスタ 召喚　いでよ！ うぉぉぉぉぉおぉおぉぉおおぉいおあｊを！！
summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,NoGravity:1b,Invisible:1b,Tags:["Ryukkun.CP-AS","Ryukkun.Born"]}
scoreboard players operation @e[tag=Ryukkun.Born,distance=..0.0001,limit=1] Ryukkun.PL-Num = @s Ryukkun.PL-Num
tag @e[tag=Ryukkun.CP-AS] remove Ryukkun.Born

# Pos Rotation 代入
data merge storage pk-utility: {CP:{Success:0b}}
execute as @e[tag=Ryukkun.CP-AS,distance=..0.0001] if score @s Ryukkun.PL-Num = @p Ryukkun.PL-Num run data modify entity @s Rotation set from storage pk-utility: World-Spawn.Rotation
execute as @e[tag=Ryukkun.CP-AS,distance=..0.0001] if score @s Ryukkun.PL-Num = @p Ryukkun.PL-Num run data modify entity @s Pos set from storage pk-utility: World-Spawn.Pos

# 果たしてアマスタは 読み込み範囲外に 居るのか居ないのかい どっちなんだい！ いてくれー
execute store success storage pk-utility: CP.Success byte 1 at @e[tag=Ryukkun.CP-AS] if score @e[tag=Ryukkun.CP-AS,sort=nearest,limit=1,distance=..0.0001] Ryukkun.PL-Num = @s Ryukkun.PL-Num run tp @s ~ ~ ~ ~ ~

# いるぅー！！
execute if data storage pk-utility: {CP:{Success:1b}} at @s as @e[tag=Ryukkun.CP-AS,distance=..0.0001] if score @s Ryukkun.PL-Num = @p Ryukkun.PL-Num run kill @s
execute if data storage pk-utility: {CP:{Success:1b}} run tp @s @s

# いないぃー！
execute if data storage pk-utility: {CP:{Success:0b}} run function pk-utility:settings/world-spawn/tp/2