#### Time Attack    --------------------------------------------------------
# Start
execute as @a[tag=R.On-TAStart] at @s unless block ~ ~-2 ~ lime_wool run tag @s remove R.On-TAStart
execute as @a[tag=R.On-TAStart] at @s unless block ~ ~-1 ~ #pk-utility:ta run tag @s remove R.On-TAStart
execute as @a[tag=!R.On-TAStart,gamemode=!spectator] at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ lime_wool run function pk-utility:ta/start

# Finish
execute as @a[tag=R.On-TAFinish] at @s unless block ~ ~-2 ~ red_wool run tag @s remove R.On-TAFinish
execute as @a[tag=R.On-TAFinish] at @s unless block ~ ~-1 ~ #pk-utility:ta run tag @s remove R.On-TAFinish
execute as @a[tag=!R.On-TAFinish,gamemode=!spectator] at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ red_wool run function pk-utility:ta/finish

# Add Time
scoreboard players add @a[tag=R.TA] R.TA-Time 1

# Cancel
execute as @a[scores={R.Trigger=1},tag=R.TA] run function pk-utility:ta/cancel
scoreboard players set @a R.Trigger 0
scoreboard players enable @a R.Trigger



#### CP     ---------------------------------------------------------------------
## Set
# Diamond (-1)[0]
execute if data storage pk-utility: {Settings:{CP:{Diamond:1b}}} as @a[tag=!R.On-Diamond-Lock,gamemode=!spectator] at @s if block ~ ~-0.0001 ~ diamond_block run function pk-utility:cp/set
tag @a remove R.On-Diamond-Lock
execute as @a at @s if block ~ ~-0.0001 ~ diamond_block run tag @s add R.On-Diamond-Lock

# Sign (-2~-3)[-1~-2]
execute as @a[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~-2 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add R.On-SetSign
execute as @a[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~-3 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add R.On-SetSign
execute as @a[tag=R.On-SetSign,tag=!R.On-SetSign-Lock,gamemode=!spectator] at @s run function pk-utility:cp/set
tag @a remove R.On-SetSign-Lock
tag @a[tag=R.On-SetSign] add R.On-SetSign-Lock
tag @a remove R.On-SetSign


## TP
execute as @a[scores={R.Used-CSick=1..}] at @s run function pk-utility:cp/tp/check
scoreboard players set @a R.Used-CSick 0

execute as @a[tag=R.Stop-TP] at @s run function pk-utility:cp/tp/2-tp

# On Sponge
execute if data storage pk-utility: {Settings:{CP:{Sponge:{Enable:1b}}}} as @a[gamemode=!spectator] at @s if block ~ ~-0.0001 ~ sponge run function pk-utility:cp/tp/sponge