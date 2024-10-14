scoreboard objectives add bank dummy "Bank Balance"
scoreboard objectives setdisplay sidebar bank

scoreboard objectives add withdraw trigger "withdraw"
scoreboard objectives add help trigger "help"

tellraw @p ["",{"text":"kEconomy v1 ","bold":false,"color":"yellow"},{"text":"has been setup successfully!","color":"gray"}]
tellraw @a [{"text":"Use ","color":"gray"},{"text":"/trigger help","bold":false,"color":"yellow"},{"text":" to see what you can do!","color":"gray"}]