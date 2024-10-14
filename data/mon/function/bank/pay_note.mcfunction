clear @s paper[minecraft:custom_data~{},minecraft:enchantment_glint_override=true] 1
$scoreboard players add @s bank $(value)
$tellraw @s ["",{"text":"Deposit successful $$(value). Your current balance is now $","bold":false,"color":"green"},{"score":{"name":"*","objective":"bank"}, "color":"green"}]