#### Time Attack    --------------------------------------------------------
# Start
execute as @a[tag=Ryukkun.On-TAStart] at @s unless block ~ ~-2 ~ lime_wool run tag @s remove Ryukkun.On-TAStart
execute as @a[tag=Ryukkun.On-TAStart] at @s unless block ~ ~-1 ~ #pk-utility:ta run tag @s remove Ryukkun.On-TAStart
execute as @a[tag=!Ryukkun.On-TAStart,gamemode=!spectator] at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ lime_wool run function pk-utility:ta/start

# Finish
execute as @a[tag=Ryukkun.On-TAFinish] at @s unless block ~ ~-2 ~ red_wool run tag @s remove Ryukkun.On-TAFinish
execute as @a[tag=Ryukkun.On-TAFinish] at @s unless block ~ ~-1 ~ #pk-utility:ta run tag @s remove Ryukkun.On-TAFinish
execute as @a[tag=!Ryukkun.On-TAFinish,gamemode=!spectator] at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ red_wool run function pk-utility:ta/finish

# Add Time
scoreboard players add @a[tag=Ryukkun.TA] Ryukkun.TA-Time 1

# Cancel
execute as @a[scores={Ryukkun.Trigger=1},tag=Ryukkun.TA] run function pk-utility:ta/cancel
scoreboard players set @a Ryukkun.Trigger 0
scoreboard players enable @a Ryukkun.Trigger



#### CP     ---------------------------------------------------------------------
## Set
# Diamond (-1)[0]
execute if data storage pk-utility: {Settings:{Diamond:1b}} as @a[tag=!Ryukkun.On-Diamond-Lock,gamemode=!spectator] at @s if block ~ ~-0.0001 ~ diamond_block run function pk-utility:cp/set
tag @a remove Ryukkun.On-Diamond-Lock
execute as @a at @s if block ~ ~-0.0001 ~ diamond_block run tag @s add Ryukkun.On-Diamond-Lock

# Sign (-2~-3)[-1~-2]
execute as @a[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~-2 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add Ryukkun.On-SetSign
execute as @a[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~-3 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add Ryukkun.On-SetSign
execute as @a[tag=Ryukkun.On-SetSign,tag=!Ryukkun.On-SetSign-Lock,gamemode=!spectator] at @s run function pk-utility:cp/set
tag @a remove Ryukkun.On-SetSign-Lock
tag @a[tag=Ryukkun.On-SetSign] add Ryukkun.On-SetSign-Lock
tag @a remove Ryukkun.On-SetSign


## TP
execute as @a[scores={Ryukkun.Used-CSick=1..}] at @s run function pk-utility:cp/tp/check
scoreboard players set @a Ryukkun.Used-CSick 0

execute as @a[tag=Ryukkun.Stop-TP] at @s run function pk-utility:cp/tp/2-tp

# On Sponge
execute if data storage pk-utility: {Settings:{Sponge:1b}} as @a[gamemode=!spectator] at @s if block ~ ~-0.0001 ~ sponge run function pk-utility:cp/tp/check