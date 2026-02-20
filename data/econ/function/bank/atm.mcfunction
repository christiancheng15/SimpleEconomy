tellraw @s {"text":"============================","color":"dark_gray"}
tellraw @s ["",{"text":"               ATM","color":"gold","bold":true}]
tellraw @s {"text":"============================","color":"dark_gray"}
tellraw @s ["",{"text":"Balance: ","color":"gray"},{"text":"ƌ","color":"yellow"},{"score":{"name":"*","objective":"bank"},"color":"yellow"}]
tellraw @s {"text":"----------------------------","color":"dark_gray"}
tellraw @s ["",{"text":"Deposit: ","color":"green"},{"text":"[All]","color":"green","click_event":{"action":"run_command","command":"/trigger deposit"},"hover_event":{"action":"show_text","value":{"text":"Deposit all diamonds now"}}},{"text":"  "},{"text":"[Amount]","color":"yellow","click_event":{"action":"suggest_command","command":"/trigger deposit set "},"hover_event":{"action":"show_text","value":{"text":"Type amount, then press Enter"}}}]
tellraw @s ["",{"text":"Withdraw: ","color":"red"},{"text":"[All]","color":"green","click_event":{"action":"run_command","command":"/trigger withdraw"},"hover_event":{"action":"show_text","value":{"text":"Withdraw all banked diamonds now"}}},{"text":"  "},{"text":"[Amount]","color":"yellow","click_event":{"action":"suggest_command","command":"/trigger withdraw set "},"hover_event":{"action":"show_text","value":{"text":"Type amount, then press Enter"}}}]
tellraw @s ["",{"text":"Transfer: ","color":"light_purple"},{"text":"[Amount]","color":"yellow","click_event":{"action":"suggest_command","command":"/trigger transfer set "},"hover_event":{"action":"show_text","value":{"text":"Set amount, then choose player in chat"}}}]
tellraw @s {"text":"----------------------------","color":"dark_gray"}
tellraw @s ["",{"text":"[Balance]","color":"aqua","click_event":{"action":"run_command","command":"/trigger balance"},"hover_event":{"action":"show_text","value":{"text":"Show current balance"}}},{"text":"  "},{"text":"[Leaderboard]","color":"gold","click_event":{"action":"run_command","command":"/trigger leaderboard"},"hover_event":{"action":"show_text","value":{"text":"Show top 10 balances (desc)"}}},{"text":"  "},{"text":"[Help]","color":"yellow","click_event":{"action":"run_command","command":"/trigger help"},"hover_event":{"action":"show_text","value":{"text":"Show all economy commands"}}}]
tellraw @s {"text":"============================","color":"dark_gray"}

scoreboard players enable @s atm
scoreboard players set @s atm 0
