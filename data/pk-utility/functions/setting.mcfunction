tellraw @s [{"text":"\n","color":"white","font":"uniform"},{"text":"⚕ ","color":"dark_aqua"},{"text":"----・----・----・----・----","color":"aqua"},{"text":"  PK ","color":"dark_aqua","bold":true},{"text":"Utility  ","color":"aqua","bold":true},{"text":"----・----・----・----・----","color":"aqua"},{"text":" ⚕","color":"dark_aqua"},{"text":"\n                           ◁ ","color":"white"},{"text":"テキストフォーマット","color":"yellow","underlined":true},{"text":" ▷      ◁ ","color":"white"},{"text":"再読み込み","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function pk-utility:setting"},"hoverEvent":{"action":"show_text","value":{"text":"クリックで ページを最新の情報に更新する"}}},{"text":" ▷","color":"white"}]
tellraw @s [{"text":"\n   - Prefix","color":"white","font":"uniform"},{"text":"       [","color":"dark_aqua"},{"text":"編集","color":"aqua","underlined":true},{"text":"]                  ","color":"dark_aqua"},{"text":"' ","color":"gray"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":" '","color":"gray"},{"text":"\n   - Map-Name"},{"text":",    ","color":"dark_gray"},{"text":"[","color":"dark_aqua"},{"text":"編集","color":"aqua","underlined":true},{"text":"]","color":"dark_aqua"},{"text":"                  ' ","color":"gray"},{"nbt":"Settings.Map-Name","storage":"pk-utility:"},{"text":" '\n","color":"gray"}]

execute if data storage pk-utility: {Settings:{No-Collision:1b}} run tellraw @s [{"text":"   - プレイヤー同士の当たり判定を消す","font":"uniform"},{"text":"               ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/collision/0"}}]
execute unless data storage pk-utility: {Settings:{No-Collision:1b}} run tellraw @s [{"text":"   - プレイヤー同士の当たり判定を消す","font":"uniform"},{"text":"              ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/collision/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{Sponge:1b}} run tellraw @s [{"text":"   - スポンジを踏んだらCPへ戻る","font":"uniform"},{"text":"                      ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/sponge/0"}}]
execute unless data storage pk-utility: {Settings:{Sponge:1b}} run tellraw @s [{"text":"   - スポンジを踏んだらCPへ戻る","font":"uniform"},{"text":"                     ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/sponge/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{Diamond:1b}} run tellraw @s [{"text":"   - Diamond_Blockを踏んだらCPを更新する","font":"uniform"},{"text":"              ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/diamond/0"}}]
execute unless data storage pk-utility: {Settings:{Diamond:1b}} run tellraw @s [{"text":"   - Diamond_Blockを踏んだらCPを更新する","font":"uniform"},{"text":"             ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/diamond/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

tellraw @s " "

execute if data storage pk-utility: {Settings:{Set-CP:{Sound:1b}}} run tellraw @s [{"text":"   - CPを設定した時のSound","font":"uniform"},{"text":"'                            ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/set-cp/sound/0"}}]
execute unless data storage pk-utility: {Settings:{Set-CP:{Sound:1b}}} run tellraw @s [{"text":"   - CPを設定した時のSound","font":"uniform"},{"text":"'                           ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/set-cp/sound/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{Set-CP:{Particle:1b}}} run tellraw @s [{"text":"   - CPを設定した時のParticle","font":"uniform"},{"text":"                          ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/set-cp/particle/0"}}]
execute unless data storage pk-utility: {Settings:{Set-CP:{Particle:1b}}} run tellraw @s [{"text":"   - CPを設定した時のParticle","font":"uniform"},{"text":"                         ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/set-cp/particle/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{Set-CP:{Message:1b}}} run tellraw @s [{"text":"   - CPを設定した時のMessage","font":"uniform"},{"text":"'                          ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/set-cp/message/0"}}]
execute unless data storage pk-utility: {Settings:{Set-CP:{Message:1b}}} run tellraw @s [{"text":"   - CPを設定した時のMessage","font":"uniform"},{"text":"'                         ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/set-cp/message/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{TA-Sound:1b}} run tellraw @s [{"text":"   - TAを開始・終了した時のSound","font":"uniform"},{"text":",                     ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/ta-sound/0"}}]
execute unless data storage pk-utility: {Settings:{TA-Sound:1b}} run tellraw @s [{"text":"   - TAを開始・終了した時のSound","font":"uniform"},{"text":",                    ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/ta-sound/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

tellraw @s " "

execute store result storage pk-utility: Settings.GameRule.SendCF byte 1 run gamerule sendCommandFeedback
execute if data storage pk-utility: {Settings:{GameRule:{SendCF:1b}}} run tellraw @s [{"text":"   - ","font":"uniform"},{"text":"Gamerule SendCommandFeedback","hoverEvent":{"action":"show_text","value":{"text":"プレイヤーが実行したコマンドのログをチャット欄に表示するかどうか。"}}},{"text":"'                       ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/gamerule/sendcf/0"}}]
execute unless data storage pk-utility: {Settings:{GameRule:{SendCF:1b}}} run tellraw @s [{"text":"   - ","font":"uniform"},{"text":"Gamerule SendCommandFeedback","hoverEvent":{"action":"show_text","value":{"text":"プレイヤーが実行したコマンドのログをチャット欄に表示するかどうか。"}}},{"text":"'                      ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/gamerule/sendcf/1"}},{"text":"  "},{"text":"⦿","color":"red"}]
