$give @s minecraft:diamond $(value)
$tellraw @s ["",{"text":"Withdrawal successful: ƌ$(value). Your current balance is ƌ","bold":false,"color":"yellow"},{"score":{"name":"*","objective":"bank"}, "color":"yellow"},{"text":".","color":"yellow"}]
