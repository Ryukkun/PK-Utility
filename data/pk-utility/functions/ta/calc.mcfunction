### 見やすさ重視
# Hour
scoreboard players operation $Hour Ryukkun.TA-Time = @s Ryukkun.TA-Time
scoreboard players operation $Hour Ryukkun.TA-Time /= $20 Ryukkun.TA-Time
scoreboard players operation $Hour Ryukkun.TA-Time /= $3600 Ryukkun.TA-Time

# Min
scoreboard players operation $Min Ryukkun.TA-Time = @s Ryukkun.TA-Time
scoreboard players operation $Min Ryukkun.TA-Time /= $20 Ryukkun.TA-Time
scoreboard players operation $Min Ryukkun.TA-Time %= $3600 Ryukkun.TA-Time
scoreboard players operation $Min Ryukkun.TA-Time /= $60 Ryukkun.TA-Time

# Sec
scoreboard players operation $Sec Ryukkun.TA-Time = @s Ryukkun.TA-Time
scoreboard players operation $Sec Ryukkun.TA-Time /= $20 Ryukkun.TA-Time
scoreboard players operation $Sec Ryukkun.TA-Time %= $60 Ryukkun.TA-Time

# Tick
scoreboard players operation $Tick Ryukkun.TA-Time = @s Ryukkun.TA-Time
scoreboard players operation $Tick Ryukkun.TA-Time %= $20 Ryukkun.TA-Time
scoreboard players operation $Tick Ryukkun.TA-Time *= $5 Ryukkun.TA-Time


# 0 Control
scoreboard players reset $Min-0 Ryukkun.TA-Time
execute if score $Min Ryukkun.TA-Time matches 0..9 run scoreboard players set $Min-0 Ryukkun.TA-Time 0

scoreboard players reset $Sec-0 Ryukkun.TA-Time
execute if score $Sec Ryukkun.TA-Time matches 0..9 run scoreboard players set $Sec-0 Ryukkun.TA-Time 0

scoreboard players reset $Tick-0 Ryukkun.TA-Time
execute if score $Tick Ryukkun.TA-Time matches 0..9 run scoreboard players set $Tick-0 Ryukkun.TA-Time 0