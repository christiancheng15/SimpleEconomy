advancement revoke @s only econ:leaderboard

scoreboard players add @a bank 0
tag @a remove econ_lb_done
tag @a remove econ_lb_viewer
tag @s add econ_lb_viewer
scoreboard players set #lb_seen econ_tmp 0

tellraw @s ["",{"text":"Top 10 Balances ","color":"gold","bold":true},{"text":"(desc)","color":"gray","bold":false}]
function econ:bank/leaderboard_loop

tag @a remove econ_lb_done
tag @a remove econ_lb_viewer
scoreboard players reset @s leaderboard
scoreboard players enable @s leaderboard
