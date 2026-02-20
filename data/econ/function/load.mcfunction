scoreboard objectives add bank dummy "Bank Balance"
scoreboard objectives setdisplay sidebar

scoreboard objectives add withdraw trigger "withdraw"
scoreboard objectives add deposit trigger "deposit"
scoreboard objectives add transfer trigger "transfer"
scoreboard objectives add transfer_pick trigger "transfer_pick"
scoreboard objectives add transfer_next trigger "transfer_next"
scoreboard objectives add transfer_prev trigger "transfer_prev"
scoreboard objectives add balance trigger "balance"
scoreboard objectives add leaderboard trigger "leaderboard"
scoreboard objectives remove atm
scoreboard objectives add atm trigger "atm"
scoreboard objectives remove help
scoreboard objectives add help trigger "help"
scoreboard objectives add econ_tmp dummy
scoreboard objectives add xfer_amt dummy
scoreboard objectives add xfer_page dummy
scoreboard players reset @a transfer_pick
scoreboard players reset @a transfer_next
scoreboard players reset @a transfer_prev

tellraw @p ["",{"text":"SimpleEconomy v2 ","bold":false,"color":"yellow"},{"text":"has been setup successfully!","color":"gray"}]
tellraw @a [{"text":"Use ","color":"gray"},{"text":"/trigger help","bold":false,"color":"yellow"},{"text":" to see what you can do!","color":"gray"}]
