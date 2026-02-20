execute store result score @s econ_tmp run clear @s minecraft:diamond 0
execute if score @s econ_tmp matches 0 run return run function econ:bank/no_diamonds_to_deposit

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~
execute store result storage minecraft:econ_temp root.value int 1 run scoreboard players get @s econ_tmp
function econ:bank/deposit_apply with storage minecraft:econ_temp root

scoreboard players reset @s deposit
scoreboard players enable @s deposit
