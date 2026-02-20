advancement revoke @s only econ:balance

tellraw @s ["",{"text":"Your current balance is ƌ","bold":false,"color":"yellow"},{"score":{"name":"*","objective":"bank"}, "color":"yellow"},{"text":".","color":"yellow"}]

scoreboard players enable @s balance
scoreboard players set @s balance 0
