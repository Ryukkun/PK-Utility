# Message
execute if data storage pk-utility: Map-Name run tellraw @s [{"text":" ","color":"white"},{"nbt":"Perfix","storage":"pk-utility:","interpret":true},{"text":" "},{"text":" "},{"nbt":"Map-Name","storage":"pk-utility:","interpret":true},{"text":" の計測を開始！ ","color":"white"},{"text":"[","color":"gray","italic":true,"underlined":false},{"text":"cancel","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger Ryukkun.Trigger set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"クリックで"},{"text":"計測を中止","color":"red","bold":true},{"text":"します"}]}},{"text":"]","color":"gray","italic":true,"underlined":false}]
execute unless data storage pk-utility: Map-Name run tellraw @s [{"text":" ","color":"white"},{"nbt":"Perfix","storage":"pk-utility:","interpret":true},{"text":" "},{"text":" "},{"text":"アスレチック の計測を開始！ ","color":"white"},{"text":"[","color":"gray","italic":true,"underlined":false},{"text":"cancel","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger Ryukkun.Trigger set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"クリックで"},{"text":"計測を中止","color":"red","bold":true},{"text":"します"}]}},{"text":"]","color":"gray","italic":true,"underlined":false}]

# Tags
scoreboard players set @s Ryukkun.TA-Time 0
tag @s add Ryukkun.On-TAStart
tag @s add Ryukkun.TA