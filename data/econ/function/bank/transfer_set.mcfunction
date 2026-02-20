advancement revoke @s only econ:transfer

execute if score @s transfer matches ..0 run return run function econ:bank/transfer_invalid_amount
execute if score @s transfer > @s bank run return run function econ:bank/transfer_insufficient

scoreboard players operation @s xfer_amt = @s transfer
scoreboard players set @s xfer_page 1

function econ:bank/transfer_show_options
