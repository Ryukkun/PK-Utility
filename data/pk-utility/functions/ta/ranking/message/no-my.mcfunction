scoreboard players operation @s Ryukkun.TA-Time = @s Ryukkun.TA-Time-Record
function pk-utility:ta/calc
scoreboard players reset @s Ryukkun.TA-Time
tellraw @s [{"text": "\n       ","font": "uniform"},{"text":"«"},{"score":{"name":"@s","objective": "Ryukkun.Ranking"},"color": "light_purple"},{"text":"位","color": "light_purple"},{"text":"»     "},{"score":{"name":"$Hour","objective":"Ryukkun.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":":","color":"white","bold":true,"underlined":true},{"score":{"name":"$Min-0","objective":"Ryukkun.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Min","objective":"Ryukkun.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":":","color":"white","bold":true,"underlined":true},{"score":{"name":"$Sec-0","objective":"Ryukkun.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Sec","objective":"Ryukkun.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":".","color":"white","bold":true,"underlined":true},{"score":{"name":"$Tick-0","objective":"Ryukkun.TA-Time"},"color":"white","bold":true,"underlined":true},{"score":{"name":"$Tick","objective":"Ryukkun.TA-Time"},"color":"white","bold":true,"underlined":true},{"text":"  "},{"selector":"@s","color": "light_purple","bold": true}]