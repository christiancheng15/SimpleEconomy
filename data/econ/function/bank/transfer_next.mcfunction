advancement revoke @s only econ:transfer_next

execute if score @s xfer_amt matches ..0 run return run function econ:bank/transfer_selection_expired
scoreboard players add @s xfer_page 1
function econ:bank/transfer_show_options
