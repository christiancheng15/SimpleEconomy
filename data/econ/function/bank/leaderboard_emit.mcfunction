scoreboard players add #lb_seen econ_tmp 1
execute if score #lb_seen econ_tmp matches ..10 run tellraw @a[tag=econ_lb_viewer,limit=1] ["",{"score":{"name":"#lb_seen","objective":"econ_tmp"},"color":"yellow"},{"text":". ","color":"gray"},{"selector":"@s","color":"white"}]
tag @s add econ_lb_done
