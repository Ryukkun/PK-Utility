#### Time Attack
# Start
execute as @a[tag=Ryukkun.On-TAStart] at @s unless block ~ ~-2 ~ lime_wool run tag @s remove Ryukkun.On-TAStart
execute as @a[tag=Ryukkun.On-TAStart] at @s unless block ~ ~-1 ~ #pk-utility:ta run tag @s remove Ryukkun.On-TAStart
execute as @a[tag=!Ryukkun.On-TAStart] at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ lime_wool run function pk-utility:ta/start

# Finish
execute as @a[tag=Ryukkun.On-TAFinish] at @s unless block ~ ~-2 ~ red_wool run tag @s remove Ryukkun.On-TAFinish
execute as @a[tag=Ryukkun.On-TAFinish] at @s unless block ~ ~-1 ~ #pk-utility:ta run tag @s remove Ryukkun.On-TAFinish
execute as @a[tag=!Ryukkun.On-TAFinish] at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ red_wool run function pk-utility:ta/finish

# Add Time
scoreboard players add @a[tag=Ryukkun.TA] Ryukkun.TA-Time 1

# Cancel
execute as @a[scores={Ryukkun.Trigger=1},tag=Ryukkun.TA] run function pk-utility:ta/cancel
scoreboard players reset @a Ryukkun.Trigger
scoreboard players enable @a Ryukkun.Trigger