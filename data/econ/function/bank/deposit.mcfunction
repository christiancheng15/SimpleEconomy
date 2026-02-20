advancement revoke @s only econ:deposit

execute if score @s deposit matches 1 run return run function econ:bank/deposit_all
execute store result score @s econ_tmp run clear @s minecraft:diamond 0
execute if score @s econ_tmp matches 0 run return run function econ:bank/no_diamonds_to_deposit
execute if score @s econ_tmp < @s deposit run return run function econ:bank/deposit_all

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~
execute store result storage minecraft:econ_temp root.value int 1 run scoreboard players get @s deposit
function econ:bank/deposit_apply with storage minecraft:econ_temp root

scoreboard players reset @s deposit
scoreboard players enable @s deposit
