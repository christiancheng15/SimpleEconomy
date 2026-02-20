execute if score @s bank matches 0 run return run function econ:bank/no_bank_balance

playsound minecraft:entity.player.levelup player @s ~ ~ ~
execute store result storage minecraft:econ_temp root.value int 1 run scoreboard players get @s bank
scoreboard players set @s bank 0
function econ:bank/withdraw_apply with storage minecraft:econ_temp root

scoreboard players reset @s withdraw
scoreboard players enable @s withdraw
