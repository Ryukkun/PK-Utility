# Calc
execute as @s[tag=R.TA] run function pk-utility:ta/calc

# Message
execute if data storage pk-utility: Settings.Map-Name as @s[tag=!R.TA] run tellraw @a [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"selector":"@s","color":"aqua","bold":true},{"text":" さんが ","color":"white"},{"nbt":"Settings.Map-Name","storage":"pk-utility:","interpret":true},{"text":" をクリアしました！","color":"white"}]
execute if data storage pk-utility: Settings.Map-Name as @s[tag=R.TA] run tellraw @a [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"selector":"@s","color":"aqua","bold":true},{"text":" さんが ","color":"white"},{"nbt":"Settings.Map-Name","storage":"pk-utility:","interpret":true},{"text":" を ","color":"white"},{"score":{"name":"$Hour","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":":","color":"white","bold":true,"underlined":true},{"score":{"name":"$Min-0","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Min","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":":","color":"white","bold":true,"underlined":true},{"score":{"name":"$Sec-0","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Sec","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":".","color":"white","bold":true,"underlined":true},{"score":{"name":"$Tick-0","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Tick","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":" でクリアしました！","color":"white","bold":false,"underlined":false}]
execute unless data storage pk-utility: Settings.Map-Name as @s[tag=!R.TA] run tellraw @a [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"selector":"@s","color":"aqua","bold":true},{"text":" さんが クリアしました！","color":"white"}]
execute unless data storage pk-utility: Settings.Map-Name as @s[tag=R.TA] run tellraw @a [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"selector":"@s","color":"aqua","bold":true},{"text":" さんが ","color":"white"},{"score":{"name":"$Hour","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":":","color":"white","bold":true,"underlined":true},{"score":{"name":"$Min-0","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Min","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":":","color":"white","bold":true,"underlined":true},{"score":{"name":"$Sec-0","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Sec","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":".","color":"white","bold":true,"underlined":true},{"score":{"name":"$Tick-0","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Tick","objective":"R.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":" でクリアしました！","color":"white","bold":false,"underlined":false}]

# 記録
execute if score @s R.TA-Time-Record matches -1 run scoreboard players operation @s R.TA-Time-Record = @s R.TA-Time
execute if score @s R.TA-Time < @s R.TA-Time-Record run scoreboard players operation @s R.TA-Time-Record = @s R.TA-Time

# Effect
execute if data storage pk-utility: {Settings:{TA:{Sound:1b}}} run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 2 0.5

# Reset CP
execute if data storage pk-utility: {Settings:{TA:{Fin-ResetCP:1b}}} run scoreboard players reset @s R.X

# remove tags
tag @s add R.On-TAFinish
tag @s remove R.TA