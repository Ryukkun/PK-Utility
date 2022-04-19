# data get
execute store result score $CP-X1 Ryukkun.X run data get storage pk-utility: World-Spawn.Pos[0] 0.1
execute store result score $CP-X1 Ryukkun.X run data get storage pk-utility: World-Spawn.Pos[2] 0.1
execute store result score $PL-X1 Ryukkun.X run data get entity @s Pos[0] 0.1
execute store result score $PL-Z1 Ryukkun.X run data get entity @s Pos[2] 0.1


# 移動距離　結果は $CP-○ へ
scoreboard players operation $CP-X1 Ryukkun.X -= $PL-X1 Ryukkun.X
scoreboard players operation $CP-Z1 Ryukkun.X -= $PL-Z1 Ryukkun.X
scoreboard players operation $CP-X1-Copy Ryukkun.X = $CP-X1 Ryukkun.X
scoreboard players operation $CP-Z1-Copy Ryukkun.X = $CP-Z1 Ryukkun.X
execute if score $CP-X1 Ryukkun.X matches ..-1 run scoreboard players operation $CP-X1-Copy Ryukkun.X *= $-1 Ryukkun.TA-Time
execute if score $CP-Z1 Ryukkun.X matches ..-1 run scoreboard players operation $CP-Z1-Copy Ryukkun.X *= $-1 Ryukkun.TA-Time


# TP
scoreboard players operation $ Ryukkun.X = $CP-X1-Copy Ryukkun.X
execute if score $CP-X1 Ryukkun.X matches 1.. rotated -90 0 positioned ~ 1000 ~ run function pk-utility:cp/tp/binary/30
execute if score $CP-X1 Ryukkun.X matches ..1 rotated 90 0 positioned ~ 1000 ~ run function pk-utility:cp/tp/binary/30

scoreboard players operation $ Ryukkun.X = $CP-Z1-Copy Ryukkun.X
execute at @s if score $CP-Z1 Ryukkun.X matches 1.. rotated 0 0 run function pk-utility:cp/tp/binary/30
execute at @s if score $CP-Z1 Ryukkun.X matches ..1 rotated 180 0 run function pk-utility:cp/tp/binary/30


# Tags
tag @s add Ryukkun.Stop-TP