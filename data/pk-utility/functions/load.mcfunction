scoreboard objectives add Ryukkun.TA-Time dummy
scoreboard objectives add Ryukkun.TA-Time-Record dummy
scoreboard objectives add Ryukkun.Trigger trigger
scoreboard objectives add Ryukkun.PL-Num dummy
scoreboard objectives add Ryukkun.Used-CSick minecraft.used:carrot_on_a_stick
scoreboard objectives add Ryukkun.X dummy
scoreboard objectives add Ryukkun.Y dummy
scoreboard objectives add Ryukkun.Z dummy
scoreboard objectives add Ryukkun.F-Yaw dummy
scoreboard objectives add Ryukkun.F-Pitch dummy
scoreboard players set $-1 Ryukkun.TA-Time -1
scoreboard players set $5 Ryukkun.TA-Time 5
scoreboard players set $10 Ryukkun.TA-Time 10
scoreboard players set $20 Ryukkun.TA-Time 20
scoreboard players set $60 Ryukkun.TA-Time 60
scoreboard players set $3600 Ryukkun.TA-Time 3600

team add No-Collision
team modify No-Collision collisionRule never

execute unless data storage pk-utility: Settings.Perfix run data modify storage pk-utility: Settings.Perfix set value '[{"text":"◁ ","color":"gray"},{"text":"P","color":"dark_aqua"},{"text":"K","color":"aqua"},{"text":" ▷","color":"gray"}]'