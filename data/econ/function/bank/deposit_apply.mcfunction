$clear @s minecraft:diamond $(value)
$scoreboard players add @s bank $(value)
$tellraw @s ["",{"text":"Deposit successful: ƌ$(value). Your current balance is ƌ","bold":false,"color":"green"},{"score":{"name":"*","objective":"bank"}, "color":"green"},{"text":".","color":"green"}]
