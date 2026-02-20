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
tag @s add econ_xfer_sender

scoreboard players set #ten econ_tmp 10
execute if score @s xfer_page matches ..0 run scoreboard players set @s xfer_page 1
scoreboard players operation #skip econ_tmp = @s xfer_page
scoreboard players remove #skip econ_tmp 1
scoreboard players operation #skip econ_tmp *= #ten econ_tmp
scoreboard players operation #end econ_tmp = #skip econ_tmp
scoreboard players add #end econ_tmp 10
scoreboard players set #seen econ_tmp 0
scoreboard players set #slot econ_tmp 0

function econ:bank/transfer_collect_loop

execute unless entity @a[tag=econ_xfer_opt1,limit=1] run return run function econ:bank/transfer_no_nearby

tellraw @s ["",{"text":"Select transfer recipient for ƌ","color":"yellow"},{"score":{"name":"*","objective":"xfer_amt"},"color":"yellow"},{"text":":","color":"yellow"}]
execute if entity @a[tag=econ_xfer_opt1,limit=1] run tellraw @s ["",{"text":"[1] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 1"}},{"selector":"@a[tag=econ_xfer_opt1,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 1"}}]
execute if entity @a[tag=econ_xfer_opt2,limit=1] run tellraw @s ["",{"text":"[2] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 2"}},{"selector":"@a[tag=econ_xfer_opt2,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 2"}}]
execute if entity @a[tag=econ_xfer_opt3,limit=1] run tellraw @s ["",{"text":"[3] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 3"}},{"selector":"@a[tag=econ_xfer_opt3,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 3"}}]
execute if entity @a[tag=econ_xfer_opt4,limit=1] run tellraw @s ["",{"text":"[4] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 4"}},{"selector":"@a[tag=econ_xfer_opt4,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 4"}}]
execute if entity @a[tag=econ_xfer_opt5,limit=1] run tellraw @s ["",{"text":"[5] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 5"}},{"selector":"@a[tag=econ_xfer_opt5,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 5"}}]
execute if entity @a[tag=econ_xfer_opt6,limit=1] run tellraw @s ["",{"text":"[6] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 6"}},{"selector":"@a[tag=econ_xfer_opt6,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 6"}}]
execute if entity @a[tag=econ_xfer_opt7,limit=1] run tellraw @s ["",{"text":"[7] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 7"}},{"selector":"@a[tag=econ_xfer_opt7,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 7"}}]
execute if entity @a[tag=econ_xfer_opt8,limit=1] run tellraw @s ["",{"text":"[8] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 8"}},{"selector":"@a[tag=econ_xfer_opt8,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 8"}}]
execute if entity @a[tag=econ_xfer_opt9,limit=1] run tellraw @s ["",{"text":"[9] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 9"}},{"selector":"@a[tag=econ_xfer_opt9,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 9"}}]
execute if entity @a[tag=econ_xfer_opt10,limit=1] run tellraw @s ["",{"text":"[10] ","color":"green","click_event":{"action":"run_command","command":"/trigger transfer_pick set 10"}},{"selector":"@a[tag=econ_xfer_opt10,limit=1]","color":"green"},{"text":" ","color":"gray"},{"text":"[Select]","color":"yellow","click_event":{"action":"run_command","command":"/trigger transfer_pick set 10"}}]

execute if score @s xfer_page matches 2.. run tellraw @s ["",{"text":"[Prev]","color":"aqua","click_event":{"action":"run_command","command":"/trigger transfer_prev"}},{"text":"  ","color":"gray"},{"text":"Page ","color":"gray"},{"score":{"name":"*","objective":"xfer_page"},"color":"yellow"}]
execute if entity @a[tag=!econ_xfer_sender,tag=!econ_xfer_seen,limit=1] run tellraw @s ["",{"text":"Page ","color":"gray"},{"score":{"name":"*","objective":"xfer_page"},"color":"yellow"},{"text":"  ","color":"gray"},{"text":"[Next]","color":"aqua","click_event":{"action":"run_command","command":"/trigger transfer_next"}}]

tellraw @s {"text":"Click [Select] (or the number) to complete transfer.","color":"gray"}
scoreboard players reset @s transfer
scoreboard players enable @s transfer
scoreboard players set @s transfer_pick 0
scoreboard players enable @s transfer_pick
scoreboard players reset @s transfer_prev
scoreboard players enable @s transfer_prev
scoreboard players reset @s transfer_next
scoreboard players enable @s transfer_next
