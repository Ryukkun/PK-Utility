#### Calclate
scoreboard objectives remove Ryukkun.Ranking
scoreboard objectives add Ryukkun.Ranking dummy
scoreboard players set $Now Ryukkun.Ranking 1
tag @a[scores={Ryukkun.TA-Time-Record=1..}] add Ryukkun.Have-Time
function pk-utility:ta/ranking/no-loop

# Remove Tags
tag @a remove Ryukkun.Ranked
tag @a remove Ryukkun.Have-Time

#### Message
tellraw @a [{"text":"\n","color":"white","font":"uniform"},{"text":"⚕ ","color":"dark_aqua"},{"text":"----・-----","color":"aqua"},{"text": "   ","color": "dark_gray"},{"text":"TimeAttack ","color":"dark_aqua","bold":true},{"text":"Ranking","color":"aqua","bold":true},{"text": "   ","color": "dark_gray"},{"text":"-----・----","color":"aqua"},{"text":" ⚕\n","color":"dark_aqua"}]
# No.1
execute as @a[scores={Ryukkun.Ranking=1}] run function pk-utility:ta/ranking/message/no1
# No.2
execute as @a[scores={Ryukkun.Ranking=2}] run function pk-utility:ta/ranking/message/no2
# No.3
execute as @a[scores={Ryukkun.Ranking=3}] run function pk-utility:ta/ranking/message/no3
# No.4
execute as @a[scores={Ryukkun.Ranking=4}] run function pk-utility:ta/ranking/message/no4
# No.5
execute as @a[scores={Ryukkun.Ranking=5}] run function pk-utility:ta/ranking/message/no5
# No My
execute as @a run function pk-utility:ta/ranking/message/no-my
#
tellraw @a [{"text":"\n","color":"white","font":"uniform"},{"text":"'","color": "dark_gray"},{"text":"⚕ ","color":"dark_aqua"},{"text":"----・----・----・----・----・----・----・----","color":"aqua"},{"text":" ⚕","color":"dark_aqua"}]