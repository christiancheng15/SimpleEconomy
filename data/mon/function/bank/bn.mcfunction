advancement revoke @s only mon:bn

execute if score @s withdraw > @s bank run return run function mon:bank/too_much_with

scoreboard players operation @s bank -= @s withdraw

playsound minecraft:entity.player.levelup player @s ~ ~ ~
execute store result storage minecraft:mon_temp root.value int 1 run scoreboard players get @s withdraw
function mon:bank/give_note with storage minecraft:mon_temp root

scoreboard players reset @s withdraw
scoreboard players enable @s withdraw