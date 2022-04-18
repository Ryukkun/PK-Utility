# Message
execute if data storage pk-utility: Settings.Map-Name run tellraw @s [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"nbt":"Settings.Map-Name","storage":"pk-utility:","interpret":true},{"text":" の計測を開始！ ","color":"white"},{"text":"[","color":"gray","italic":true,"underlined":false},{"text":"cancel","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger Ryukkun.Trigger set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"クリックで"},{"text":"計測を中止","color":"red","bold":true},{"text":"します"}]}},{"text":"]","color":"gray","italic":true,"underlined":false}]
execute unless data storage pk-utility: Settings.Map-Name run tellraw @s [{"text":" ","color":"white"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":"\u0020\u0020"},{"text":"アスレチック の計測を開始！ ","color":"white"},{"text":"[","color":"gray","italic":true,"underlined":false},{"text":"cancel","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger Ryukkun.Trigger set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"クリックで"},{"text":"計測を中止","color":"red","bold":true},{"text":"します"}]}},{"text":"]","color":"gray","italic":true,"underlined":false}]

# Effect
execute if data storage pk-utility: {Settings:{TA-Sound:1b}} run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1 0.5

# Tags
scoreboard players reset @s Ryukkun.X
scoreboard players set @s Ryukkun.TA-Time 0
tag @s add Ryukkun.On-TAStart
tag @s add Ryukkun.TA