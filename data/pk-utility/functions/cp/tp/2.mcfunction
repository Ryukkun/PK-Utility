# data get
scoreboard players operation $CP-X1 R.X = @s R.X
scoreboard players operation $CP-Z1 R.X = @s R.Z
scoreboard players operation $CP-X1 R.X /= $10 R.TA-Time
scoreboard players operation $CP-Z1 R.X /= $10 R.TA-Time
execute store result score $PL-X1 R.X run data get entity @s Pos[0] 0.1
execute store result score $PL-Z1 R.X run data get entity @s Pos[2] 0.1


# 移動距離　結果は $CP-○ へ
scoreboard players operation $CP-X1 R.X -= $PL-X1 R.X
scoreboard players operation $CP-Z1 R.X -= $PL-Z1 R.X
scoreboard players operation $CP-X1-Copy R.X = $CP-X1 R.X
scoreboard players operation $CP-Z1-Copy R.X = $CP-Z1 R.X
execute if score $CP-X1 R.X matches ..-1 run scoreboard players operation $CP-X1-Copy R.X *= $-1 R.TA-Time
execute if score $CP-Z1 R.X matches ..-1 run scoreboard players operation $CP-Z1-Copy R.X *= $-1 R.TA-Time


# TP
scoreboard players operation $ R.X = $CP-X1-Copy R.X
execute if score $CP-X1 R.X matches 1.. rotated -90 0 positioned ~ 1000 ~ run function pk-utility:cp/tp/binary/30
execute if score $CP-X1 R.X matches ..1 rotated 90 0 positioned ~ 1000 ~ run function pk-utility:cp/tp/binary/30

scoreboard players operation $ R.X = $CP-Z1-Copy R.X
execute at @s if score $CP-Z1 R.X matches 1.. rotated 0 0 run function pk-utility:cp/tp/binary/30
execute at @s if score $CP-Z1 R.X matches ..1 rotated 180 0 run function pk-utility:cp/tp/binary/30


# Tags
tag @s add R.Stop-TP