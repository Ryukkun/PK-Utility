scoreboard objectives add R.TA-Time dummy
scoreboard objectives add R.TA-Time-Record dummy
scoreboard objectives add R.Trigger trigger
scoreboard objectives add R.Stop-CP-Time dummy
scoreboard objectives add R.PL-Num dummy
scoreboard objectives add R.Used-CSick minecraft.used:carrot_on_a_stick
scoreboard objectives add R.X dummy
scoreboard objectives add R.Y dummy
scoreboard objectives add R.Z dummy
scoreboard objectives add R.F-Yaw dummy
scoreboard objectives add R.F-Pitch dummy
scoreboard players set $-1 R.TA-Time -1
scoreboard players set $5 R.TA-Time 5
scoreboard players set $10 R.TA-Time 10
scoreboard players set $20 R.TA-Time 20
scoreboard players set $60 R.TA-Time 60
scoreboard players set $3600 R.TA-Time 3600

team add No-Collision
team add R.No1
team add R.No2
team add R.No3
team modify No-Collision collisionRule never
team modify R.No1 collisionRule never
team modify R.No2 collisionRule never
team modify R.No3 collisionRule never
team modify R.No1 color aqua
team modify R.No2 color gold
team modify R.No3 color white

gamerule maxCommandChainLength 65536
execute if data storage pk-utility: {Settings:{Peaceful:1b}} run difficulty peaceful


execute unless data storage pk-utility: Settings.Perfix run data modify storage pk-utility: Settings.Perfix set value '[{"text":"◁ ","color":"gray"},{"text":"P","color":"dark_aqua"},{"text":"K","color":"aqua"},{"text":" ▷","color":"gray"}]'
execute unless data storage pk-utility: Settings.No-Collision run data modify storage pk-utility: Settings.No-Collision set value 1b

execute unless data storage pk-utility: Settings.CP.Diamond run data modify storage pk-utility: Settings.CP.Diamond set value 0b
execute unless data storage pk-utility: Settings.CP.Set.Message run data modify storage pk-utility: Settings.CP.Set.Message set value 1b
execute unless data storage pk-utility: Settings.CP.Set.Particle run data modify storage pk-utility: Settings.CP.Set.Particle set value 1b
execute unless data storage pk-utility: Settings.CP.Set.Sound run data modify storage pk-utility: Settings.CP.Set.Sound set value 1b
execute unless data storage pk-utility: Settings.CP.Sponge.Enable run data modify storage pk-utility: Settings.CP.Sponge.Enable set value 0b
execute unless data storage pk-utility: Settings.CP.Sponge.Sound run data modify storage pk-utility: Settings.CP.Sponge.Sound set value 1b
execute unless data storage pk-utility: Settings.CP.TP.Failed-Sound run data modify storage pk-utility: Settings.CP.TP.Failed-Sound set value 1b

execute unless data storage pk-utility: Settings.TA.Sound run data modify storage pk-utility: Settings.TA.Sound set value 1b
execute unless data storage pk-utility: Settings.TA.Fin-ResetCP run data modify storage pk-utility: Settings.TA.Fin-ResetCP set value 1b
execute unless data storage pk-utility: Settings.TA.Start-SetCP run data modify storage pk-utility: Settings.TA.Start-SetCP set value 1b

execute unless data storage pk-utility: Settings.World-Spawn run data modify storage pk-utility: Settings.World-Spawn set value 0b
execute unless data storage pk-utility: Settings.Join-GiveItem run data modify storage pk-utility: Settings.Join-GiveItem set value 1b