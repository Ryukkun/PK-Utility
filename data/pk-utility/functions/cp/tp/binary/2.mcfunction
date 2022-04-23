
scoreboard players operation $ R.X += $ R.X
execute if score $ R.X matches 0.. run function pk-utility:cp/tp/binary/1
execute if score $ R.X matches ..-1 positioned ^ ^ ^40 run function pk-utility:cp/tp/binary/1
