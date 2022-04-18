# Effect 
effect give @s minecraft:levitation 1 255 true

# 果たしてアマスタは 読み込み範囲外に 居るのか居ないのかい どっちなんだい！ いてくれー
data merge storage pk-utility: {CP:{Success:0b}}
execute store success storage pk-utility: CP.Success byte 1 at @e[tag=Ryukkun.CP-AS] if score @e[tag=Ryukkun.CP-AS,sort=nearest,limit=1,distance=..0.0001] Ryukkun.PL-Num = @s Ryukkun.PL-Num run tp @s ~ ~ ~ ~ ~

# いるぅー！！
execute if data storage pk-utility: {CP:{Success:1b}} at @s as @e[tag=Ryukkun.CP-AS,distance=..0.0001] if score @s Ryukkun.PL-Num = @p Ryukkun.PL-Num run kill @s
execute if data storage pk-utility: {CP:{Success:1b}} at @s run tp @s ~0.5 ~ ~0.5
execute if data storage pk-utility: {CP:{Success:1b}} run tp @s @s
execute if data storage pk-utility: {CP:{Success:1b}} run tag @s remove Ryukkun.Stop-TP
execute if data storage pk-utility: {CP:{Success:1b}} run effect clear @s levitation

# Tags
tag @s add Ryukkun.On-Diamond-Lock
tag @s add Ryukkun.On-SetSign-Lock
tag @s add Ryukkun.On-SetSign