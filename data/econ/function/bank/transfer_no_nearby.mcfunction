tellraw @s {"color":"red","text":"No eligible players found online for transfer."}
scoreboard players set @s xfer_amt 0
scoreboard players set @s xfer_page 1
scoreboard players set @s transfer -1
scoreboard players enable @s transfer
scoreboard players reset @s transfer_pick
scoreboard players reset @s transfer_prev
scoreboard players reset @s transfer_next
tag @a remove econ_xfer_target
tag @a remove econ_xfer_sender
tag @a remove econ_xfer_seen
tag @a remove econ_xfer_current
tag @a remove econ_xfer_opt1
tag @a remove econ_xfer_opt2
tag @a remove econ_xfer_opt3
tag @a remove econ_xfer_opt4
tag @a remove econ_xfer_opt5
tag @a remove econ_xfer_opt6
tag @a remove econ_xfer_opt7
tag @a remove econ_xfer_opt8
tag @a remove econ_xfer_opt9
tag @a remove econ_xfer_opt10
