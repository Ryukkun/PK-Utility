scoreboard objectives add Ryukkun.TA-Time dummy
scoreboard objectives add Ryukkun.TA-Time-Record dummy
scoreboard objectives add Ryukkun.Trigger trigger
scoreboard players set $5 Ryukkun.TA-Time 5
scoreboard players set $20 Ryukkun.TA-Time 20
scoreboard players set $60 Ryukkun.TA-Time 60
scoreboard players set $3600 Ryukkun.TA-Time 3600

execute unless data storage pk-utility: Perfix run data modify storage pk-utility: Perfix set value '[{"text":"◁ ","color":"gray"},{"text":"P","color":"dark_aqua"},{"text":"K","color":"aqua"},{"text":" ▷","color":"gray"}]'