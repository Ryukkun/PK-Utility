scoreboard players set $Short R.TA-Time-Record 2147483647
scoreboard players operation $Short R.TA-Time-Record < @a[tag=R.Have-Time,tag=!R.Ranked] R.TA-Time-Record
execute as @a[tag=R.Have-Time,tag=!R.Ranked] if score $Short R.TA-Time-Record = @s R.TA-Time-Record run scoreboard players operation @s R.Ranking = $Now R.Ranking
execute as @a[tag=R.Have-Time,tag=!R.Ranked] if score $Short R.TA-Time-Record = @s R.TA-Time-Record run scoreboard players add $Now R.Ranking 1
execute as @a[tag=R.Have-Time,tag=!R.Ranked] if score $Short R.TA-Time-Record = @s R.TA-Time-Record run tag @s add R.Ranked
execute if entity @a[tag=R.Have-Time,tag=!R.Ranked] run function pk-utility:ta/ranking/no-loop