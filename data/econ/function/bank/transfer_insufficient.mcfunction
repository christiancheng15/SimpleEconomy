tellraw @s ["",{"color":"red","text":"Insufficient bank balance. Your current balance is ƌ"},{"score":{"name":"*","objective":"bank"},"color":"red"},{"color":"red","text":"."}]
scoreboard players set @s transfer -1
scoreboard players enable @s transfer
