scoreboard players operation $Short Ryukkun.TA-Time-Record = @a[tag=Ryukkun.Have-Time,tag=!Ryukkun.Ranked,limit=1] Ryukkun.TA-Time-Record
execute as @a[tag=Ryukkun.Have-Time,tag=!Ryukkun.Ranked] if score $Short Ryukkun.TA-Time-Record > @s Ryukkun.TA-Time-Record run scoreboard players operation $Short Ryukkun.TA-Time-Record = @s Ryukkun.TA-Time-Record
execute as @a[tag=Ryukkun.Have-Time,tag=!Ryukkun.Ranked] if score $Short Ryukkun.TA-Time-Record = @s Ryukkun.TA-Time-Record run scoreboard players operation @s Ryukkun.Ranking = $Now Ryukkun.Ranking
execute as @a[tag=Ryukkun.Have-Time,tag=!Ryukkun.Ranked] if score $Short Ryukkun.TA-Time-Record = @s Ryukkun.TA-Time-Record run scoreboard players add $Now Ryukkun.Ranking 1
execute as @a[tag=Ryukkun.Have-Time,tag=!Ryukkun.Ranked] if score $Short Ryukkun.TA-Time-Record = @s Ryukkun.TA-Time-Record run tag @s add Ryukkun.Ranked
execute if entity @a[tag=Ryukkun.Have-Time,tag=!Ryukkun.Ranked] run function pk-utility:ta/ranking/no-loop