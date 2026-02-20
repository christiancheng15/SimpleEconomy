execute unless entity @a[tag=!econ_xfer_sender,tag=!econ_xfer_seen,limit=1,sort=nearest] run return 0
execute if score #seen econ_tmp >= #end econ_tmp run return 0

execute as @a[tag=!econ_xfer_sender,tag=!econ_xfer_seen,limit=1,sort=nearest] run tag @s add econ_xfer_current
tag @a[tag=econ_xfer_current] add econ_xfer_seen
scoreboard players add #seen econ_tmp 1
execute if score #seen econ_tmp > #skip econ_tmp run scoreboard players add #slot econ_tmp 1
execute if score #slot econ_tmp matches 1 run tag @a[tag=econ_xfer_current] add econ_xfer_opt1
execute if score #slot econ_tmp matches 2 run tag @a[tag=econ_xfer_current] add econ_xfer_opt2
execute if score #slot econ_tmp matches 3 run tag @a[tag=econ_xfer_current] add econ_xfer_opt3
execute if score #slot econ_tmp matches 4 run tag @a[tag=econ_xfer_current] add econ_xfer_opt4
execute if score #slot econ_tmp matches 5 run tag @a[tag=econ_xfer_current] add econ_xfer_opt5
execute if score #slot econ_tmp matches 6 run tag @a[tag=econ_xfer_current] add econ_xfer_opt6
execute if score #slot econ_tmp matches 7 run tag @a[tag=econ_xfer_current] add econ_xfer_opt7
execute if score #slot econ_tmp matches 8 run tag @a[tag=econ_xfer_current] add econ_xfer_opt8
execute if score #slot econ_tmp matches 9 run tag @a[tag=econ_xfer_current] add econ_xfer_opt9
execute if score #slot econ_tmp matches 10 run tag @a[tag=econ_xfer_current] add econ_xfer_opt10
tag @a[tag=econ_xfer_current] remove econ_xfer_current

function econ:bank/transfer_collect_loop
