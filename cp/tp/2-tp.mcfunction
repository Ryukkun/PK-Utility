# Effect 
effect give @s minecraft:levitation 1 255 true

# 果たしてアマスタは 読み込み範囲外に 居るのか居ないのかい どっちなんだい！ いてくれー
data merge storage pk-utility: {CP:{Success:0b}}
execute store success storage pk-utility: CP.Success byte 1 at @e[tag=R.CP-AS] if score @e[tag=R.CP-AS,sort=nearest,limit=1,distance=..0.0001] R.PL-Num = @s R.PL-Num run tp @s ~ ~ ~ ~ ~

# いるぅー！！
execute if data storage pk-utility: {CP:{Success:1b}} at @s as @e[tag=R.CP-AS,distance=..0.0001] if score @s R.PL-Num = @p R.PL-Num run kill @s
execute if data storage pk-utility: {CP:{Success:1b}} at @s run tp @s ~0.5 ~ ~0.5
execute if data storage pk-utility: {CP:{Success:1b}} run tp @s @s
execute if data storage pk-utility: {CP:{Success:1b}} run tag @s remove R.Stop-TP
execute if data storage pk-utility: {CP:{Success:1b}} run effect clear @s levitation

# Tags
scoreboard players set @s R.Stop-CP-Time -100
tag @s add R.On-Diamond-Lock
tag @s add R.On-SetSign-Lock
tag @s add R.On-TAStart-Lock