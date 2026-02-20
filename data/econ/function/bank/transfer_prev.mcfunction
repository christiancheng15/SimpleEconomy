advancement revoke @s only econ:transfer_prev

execute if score @s xfer_amt matches ..0 run return run function econ:bank/transfer_selection_expired
scoreboard players remove @s xfer_page 1
execute if score @s xfer_page matches ..0 run scoreboard players set @s xfer_page 1
function econ:bank/transfer_show_options
