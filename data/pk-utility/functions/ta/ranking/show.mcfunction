#### Calclate
scoreboard objectives remove R.Ranking
scoreboard objectives add R.Ranking dummy
scoreboard players set $Now R.Ranking 1
tag @a[scores={R.TA-Time-Record=1..}] add R.Have-Time
function pk-utility:ta/ranking/no-loop

# Remove Tags
tag @a remove R.Ranked
tag @a remove R.Have-Time

#### Message
tellraw @a [{"text":"\n","color":"white","font":"uniform"},{"text":"⚕ ","color":"dark_aqua"},{"text":"----・-----","color":"aqua"},{"text": "   ","color": "dark_gray"},{"text":"TimeAttack ","color":"dark_aqua","bold":true},{"text":"Ranking","color":"aqua","bold":true},{"text": "   ","color": "dark_gray"},{"text":"-----・----","color":"aqua"},{"text":" ⚕\n","color":"dark_aqua"}]
# No.1
execute as @a[scores={R.Ranking=1}] run function pk-utility:ta/ranking/message/no1
# No.2
execute as @a[scores={R.Ranking=2}] run function pk-utility:ta/ranking/message/no2
# No.3
execute as @a[scores={R.Ranking=3}] run function pk-utility:ta/ranking/message/no3
# No.4
execute as @a[scores={R.Ranking=4}] run function pk-utility:ta/ranking/message/no4-
# No.5
execute as @a[scores={R.Ranking=5}] run function pk-utility:ta/ranking/message/no4-
# No.6
execute as @a[scores={R.Ranking=6}] run function pk-utility:ta/ranking/message/no4-
# No.7
execute as @a[scores={R.Ranking=7}] run function pk-utility:ta/ranking/message/no4-
# No My
execute as @a[scores={R.TA-Time-Record=1..}] run function pk-utility:ta/ranking/message/no-my
execute as @a[scores={R.TA-Time-Record=-1}] run tellraw @s [{"text": "\n       ","font": "uniform"},{"text":"«"},{"text":"N/A","color": "light_purple"},{"text":"»     "},{"text": "記録なし","color":"white","bold":true,"underlined":true},{"text":"  "},{"selector":"@s","color": "light_purple","bold": true}]
#
tellraw @a [{"text":"\n","color":"white","font":"uniform"},{"text":"'","color": "dark_gray"},{"text":"⚕ ","color":"dark_aqua"},{"text":"----・----・----・----・----・----・----・----","color":"aqua"},{"text":" ⚕","color":"dark_aqua"}]

#### Effect
team join R.No1 @a[scores={R.Ranking=1}]
team join R.No2 @a[scores={R.Ranking=2}]
team join R.No3 @a[scores={R.Ranking=3}]
effect give @a[scores={R.Ranking=1..3}] glowing 10 0 true
schedule function pk-utility:ta/ranking/team 10s replace