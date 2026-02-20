advancement revoke @s only econ:transfer_pick

execute unless entity @s[tag=econ_xfer_sender] run return run function econ:bank/transfer_selection_expired
execute if score @s xfer_amt matches ..0 run return run function econ:bank/transfer_selection_expired
execute if score @s transfer_pick matches 1 if entity @a[tag=econ_xfer_opt1,limit=1] run tag @a[tag=econ_xfer_opt1,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 2 if entity @a[tag=econ_xfer_opt2,limit=1] run tag @a[tag=econ_xfer_opt2,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 3 if entity @a[tag=econ_xfer_opt3,limit=1] run tag @a[tag=econ_xfer_opt3,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 4 if entity @a[tag=econ_xfer_opt4,limit=1] run tag @a[tag=econ_xfer_opt4,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 5 if entity @a[tag=econ_xfer_opt5,limit=1] run tag @a[tag=econ_xfer_opt5,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 6 if entity @a[tag=econ_xfer_opt6,limit=1] run tag @a[tag=econ_xfer_opt6,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 7 if entity @a[tag=econ_xfer_opt7,limit=1] run tag @a[tag=econ_xfer_opt7,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 8 if entity @a[tag=econ_xfer_opt8,limit=1] run tag @a[tag=econ_xfer_opt8,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 9 if entity @a[tag=econ_xfer_opt9,limit=1] run tag @a[tag=econ_xfer_opt9,limit=1] add econ_xfer_target
execute if score @s transfer_pick matches 10 if entity @a[tag=econ_xfer_opt10,limit=1] run tag @a[tag=econ_xfer_opt10,limit=1] add econ_xfer_target

execute unless entity @a[tag=econ_xfer_target,limit=1] run return run function econ:bank/transfer_pick_invalid

function econ:bank/transfer_apply
