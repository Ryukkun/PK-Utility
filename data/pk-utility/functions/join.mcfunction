scoreboard players set @s Ryukkun.TA-Time-Record -1

execute store result score @s Ryukkun.PL-Num run scoreboard players add $Base Ryukkun.PL-Num 1

execute if data storage pk-utility: {Settings:{No-Collision:1b}} run team join No-Collision @s

execute unless data storage pk-utility: {Settings:{First:1b}} store success storage pk-utility: Settings.First byte 1 run tellraw @a [{"text":""}]

execute if data storage pk-utility: {Settings:{Join-GiveItem:1b}} run function pk-utility:get

execute if data storage pk-utility: {Settings:{World-Spawn:1b}} run function pk-utility:settings/world-spawn/tp/1