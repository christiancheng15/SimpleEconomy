execute unless entity @a[tag=!econ_lb_done] run return 0
execute if score #lb_seen econ_tmp matches 10.. run return 0

scoreboard players set #lb_max econ_tmp -2147483648
execute as @a[tag=!econ_lb_done] if score @s bank > #lb_max econ_tmp run scoreboard players operation #lb_max econ_tmp = @s bank
tag @a remove econ_lb_pick
execute as @a[tag=!econ_lb_done] if score @s bank = #lb_max econ_tmp run tag @s add econ_lb_pick
execute as @a[tag=econ_lb_pick,limit=1,sort=nearest] run function econ:bank/leaderboard_emit
tag @a remove econ_lb_pick

function econ:bank/leaderboard_loop
