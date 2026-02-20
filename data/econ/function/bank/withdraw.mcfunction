advancement revoke @s only econ:withdraw

execute if score @s withdraw matches 1 run return run function econ:bank/withdraw_all
execute if score @s withdraw > @s bank run return run function econ:bank/too_much_with

scoreboard players operation @s bank -= @s withdraw

playsound minecraft:entity.player.levelup player @s ~ ~ ~
execute store result storage minecraft:econ_temp root.value int 1 run scoreboard players get @s withdraw
function econ:bank/withdraw_apply with storage minecraft:econ_temp root

scoreboard players reset @s withdraw
scoreboard players enable @s withdraw
