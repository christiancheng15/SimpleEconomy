advancement revoke @s only econ:help

scoreboard players enable @s help
scoreboard players set @s help 0

tellraw @s {"text":"SimpleEconomy Commands","color":"gold","bold":true}
tellraw @s ["",{"text":"/trigger help","bold":false,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger help"},"hoverEvent":{"action":"show_text","contents":{"text":"Show all commands"}}},{"color":"gray","text":" - view all commands"}]
tellraw @s ["",{"text":"/trigger deposit","bold":false,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger deposit"},"hoverEvent":{"action":"show_text","contents":{"text":"Deposit all diamonds"}}},{"color":"gray","text":" - deposit all diamonds"}]
tellraw @s ["",{"text":"/trigger deposit set <qty>","bold":false,"color":"green","clickEvent":{"action":"suggest_command","value":"/trigger deposit set "},"hoverEvent":{"action":"show_text","contents":{"text":"Type quantity, then press Enter"}}},{"color":"gray","text":" - deposit a specific amount"}]
tellraw @s ["",{"text":"/trigger withdraw","bold":false,"color":"red","clickEvent":{"action":"suggest_command","value":"/trigger withdraw"},"hoverEvent":{"action":"show_text","contents":{"text":"Withdraw full bank balance"}}},{"color":"gray","text":" - withdraw your full bank balance"}]
tellraw @s ["",{"text":"/trigger withdraw set <qty>","bold":false,"color":"red","clickEvent":{"action":"suggest_command","value":"/trigger withdraw set "},"hoverEvent":{"action":"show_text","contents":{"text":"Type quantity, then press Enter"}}},{"color":"gray","text":" - withdraw a specific amount"}]
tellraw @s ["",{"text":"/trigger transfer set <qty>","bold":false,"color":"light_purple","clickEvent":{"action":"suggest_command","value":"/trigger transfer set "},"hoverEvent":{"action":"show_text","contents":{"text":"Shows online players to click (10 per page)"}}},{"color":"gray","text":" - open transfer player list"}]
tellraw @s ["",{"text":"/trigger balance","bold":false,"color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger balance"},"hoverEvent":{"action":"show_text","contents":{"text":"Show your bank balance"}}},{"color":"gray","text":" - view your bank balance"}]
tellraw @s ["",{"text":"/trigger atm","bold":false,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger atm"},"hoverEvent":{"action":"show_text","contents":{"text":"Open quick actions menu"}}},{"color":"gray","text":" - open quick chat actions"}]
