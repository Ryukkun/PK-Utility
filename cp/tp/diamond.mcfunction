execute as @a at @s if block ~ ~-0.0001 ~ diamond_block run tag @s add R.On-Diamond
execute as @a[tag=R.On-Diamond,tag=!R.On-Diamond-Lock,gamemode=!spectator] at @s run function pk-utility:cp/set
tag @a[scores={R.Stop-CP-Time=0..}] remove R.On-Diamond-Lock
tag @a[tag=R.On-Diamond] add R.On-Diamond-Lock
scoreboard players set @a[tag=R.On-Diamond,scores={R.Stop-CP-Time=..-40}] R.Stop-CP-Time -39
tag @a remove R.On-Diamond