#### Tag + Score
tag @a remove R.OnGround
tag @a[nbt={OnGround:1b}] add R.OnGround
scoreboard players add @a[scores={R.Stop-CP-Time=..-1}] R.Stop-CP-Time 1
scoreboard players add @a[tag=R.TA] R.TA-Time 1


#### Time Attack    --------------------------------------------------------
# Start
execute as @a at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ lime_wool run tag @s add R.On-TAStart
execute as @a[tag=R.On-TAStart,tag=!R.On-TAStart-Lock,gamemode=!spectator] at @s run function pk-utility:ta/start
tag @a remove R.On-TAStart-Lock
tag @a[tag=R.On-TAStart] add R.On-TAStart-Lock
tag @a remove R.On-TAStart

# Finish
execute as @a at @s if block ~ ~-1 ~ #pk-utility:ta if block ~ ~-2 ~ red_wool run tag @s add R.On-TAFin
execute as @a[tag=R.On-TAFin,tag=!R.On-TAFin-Lock,gamemode=!spectator] at @s run function pk-utility:ta/finish
tag @a remove R.On-TAFin-Lock
tag @a[tag=R.On-TAFin] add R.On-TAFin-Lock
tag @a remove R.On-TAFin

# Cancel
execute as @a[scores={R.Trigger=1},tag=R.TA] run function pk-utility:ta/cancel
scoreboard players set @a R.Trigger 0
scoreboard players enable @a R.Trigger



#### CP     ---------------------------------------------------------------------
## Set
# Diamond (-1)[0]
execute if data storage pk-utility: {Settings:{CP:{Diamond:1b}}} run function pk-utility:cp/tp/diamond

# Sign (-2~-3)[-1~-2]
execute as @a[tag=R.OnGround] at @s positioned ~ ~-2 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add R.On-SetSign
execute as @a[tag=R.OnGround] at @s positioned ~ ~-3 ~ if block ~ ~ ~ #signs if data block ~ ~ ~ {Text1:'{"text":"set cp"}'} run tag @s add R.On-SetSign
execute as @a[tag=R.On-SetSign,tag=!R.On-SetSign-Lock,gamemode=!spectator] at @s run function pk-utility:cp/set
tag @a[scores={R.Stop-CP-Time=0..}] remove R.On-SetSign-Lock
tag @a[tag=R.On-SetSign] add R.On-SetSign-Lock
scoreboard players set @a[tag=R.On-SetSign,scores={R.Stop-CP-Time=..-40}] R.Stop-CP-Time -39
tag @a remove R.On-SetSign


## TP
execute as @a[scores={R.Used-CSick=1..}] at @s run function pk-utility:cp/tp/check
scoreboard players set @a R.Used-CSick 0

execute as @a[tag=R.Stop-TP] at @s run function pk-utility:cp/tp/2-tp

# On Sponge
execute if data storage pk-utility: {Settings:{CP:{Sponge:{Enable:1b}}}} as @a[gamemode=!spectator] at @s if block ~ ~-0.0001 ~ sponge run function pk-utility:cp/tp/sponge