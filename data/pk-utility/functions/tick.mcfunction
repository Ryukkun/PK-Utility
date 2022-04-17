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
scoreboard players set @a Ryukkun.Trigger 0
scoreboard players enable @a Ryukkun.Trigger


#### CP
## Set
# Diamond (-1)[0]
execute as @a[tag=Ryukkun.On-Diamond] at @s unless block ~ ~-0.0001 ~ diamond_block run tag @s remove Ryukkun.On-Diamond
execute as @a[tag=!Ryukkun.On-Diamond] at @s if block ~ ~-0.0001 ~ diamond_block run function pk-utility:cp/set

# Sign (-2~-3)[-1~-2]
execute as @a at @s positioned ~ ~-2 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add Ryukkun.On-SetSign
execute as @a at @s positioned ~ ~-3 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add Ryukkun.On-SetSign
execute as @a[tag=Ryukkun.On-SetSign,tag=!Ryukkun.On-SetSign-Lock] if data entity @s {OnGround:1b} run function pk-utility:cp/set
tag @a remove Ryukkun.On-SetSign-Lock
tag @a[tag=Ryukkun.On-SetSign] add Ryukkun.On-SetSign-Lock
tag @a remove Ryukkun.On-SetSign