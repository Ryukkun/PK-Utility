### 見やすさ重視
# Hour
scoreboard players operation $Hour R.TA-Time = @s R.TA-Time
scoreboard players operation $Hour R.TA-Time /= $20 R.TA-Time
scoreboard players operation $Hour R.TA-Time /= $3600 R.TA-Time

# Min
scoreboard players operation $Min R.TA-Time = @s R.TA-Time
scoreboard players operation $Min R.TA-Time /= $20 R.TA-Time
scoreboard players operation $Min R.TA-Time %= $3600 R.TA-Time
scoreboard players operation $Min R.TA-Time /= $60 R.TA-Time

# Sec
scoreboard players operation $Sec R.TA-Time = @s R.TA-Time
scoreboard players operation $Sec R.TA-Time /= $20 R.TA-Time
scoreboard players operation $Sec R.TA-Time %= $60 R.TA-Time

# Tick
scoreboard players operation $Tick R.TA-Time = @s R.TA-Time
scoreboard players operation $Tick R.TA-Time %= $20 R.TA-Time
scoreboard players operation $Tick R.TA-Time *= $5 R.TA-Time


# 0 Control
scoreboard players reset $Min-0 R.TA-Time
execute if score $Min R.TA-Time matches 0..9 run scoreboard players set $Min-0 R.TA-Time 0

scoreboard players reset $Sec-0 R.TA-Time
execute if score $Sec R.TA-Time matches 0..9 run scoreboard players set $Sec-0 R.TA-Time 0

scoreboard players reset $Tick-0 R.TA-Time
execute if score $Tick R.TA-Time matches 0..9 run scoreboard players set $Tick-0 R.TA-Time 0