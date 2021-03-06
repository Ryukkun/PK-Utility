# Message
execute if data storage pk-utility: Settings.Map-Name run tellraw @s [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"nbt":"Settings.Map-Name","storage":"pk-utility:","interpret":true},{"text":" の計測を開始！ ","color":"white"},{"text":"[","color":"gray","italic":true,"underlined":false},{"text":"cancel","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger R.Trigger set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"クリックで"},{"text":"計測を中止","color":"red","bold":true},{"text":"します"}]}},{"text":"]","color":"gray","italic":true,"underlined":false}]
execute unless data storage pk-utility: Settings.Map-Name run tellraw @s [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"text":"アスレチック の計測を開始！ ","color":"white"},{"text":"[","color":"gray","italic":true,"underlined":false},{"text":"cancel","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger R.Trigger set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"クリックで"},{"text":"計測を中止","color":"red","bold":true},{"text":"します"}]}},{"text":"]","color":"gray","italic":true,"underlined":false}]

# Effect
execute if data storage pk-utility: {Settings:{TA:{Sound:1b}}} run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1 0.5

# Set CP
execute if data storage pk-utility: {Settings:{TA:{Start-SetCP:1b}}} store result score @s R.X run data get entity @s Pos[0]
execute if data storage pk-utility: {Settings:{TA:{Start-SetCP:1b}}} store result score @s R.Y run data get entity @s Pos[1] 100000
execute if data storage pk-utility: {Settings:{TA:{Start-SetCP:1b}}} store result score @s R.Z run data get entity @s Pos[2]
execute if data storage pk-utility: {Settings:{TA:{Start-SetCP:1b}}} store result score @s R.F-Yaw run data get entity @s Rotation[0]
execute if data storage pk-utility: {Settings:{TA:{Start-SetCP:1b}}} store result score @s R.F-Pitch run data get entity @s Rotation[1]

# Tags
scoreboard players set @s R.TA-Time 0
tag @s add R.On-TAStart
tag @s add R.TA