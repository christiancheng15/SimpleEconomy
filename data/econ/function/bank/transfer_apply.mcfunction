scoreboard players operation #xfer_amt econ_tmp = @s xfer_amt
scoreboard players operation @a[tag=econ_xfer_target,limit=1] bank += @s xfer_amt
scoreboard players operation @s bank -= @s xfer_amt
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~
execute as @a[tag=econ_xfer_target,limit=1] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~

tellraw @s ["",{"text":"Transfer successful: ƌ","color":"green"},{"score":{"name":"*","objective":"xfer_amt"},"color":"green"},{"text":" sent to ","color":"green"},{"selector":"@a[tag=econ_xfer_target,limit=1]","color":"green"},{"text":". Your current balance is ƌ","color":"green"},{"score":{"name":"*","objective":"bank"},"color":"green"},{"text":".","color":"green"}]
execute as @a[tag=econ_xfer_target,limit=1] run tellraw @s ["",{"selector":"@a[tag=econ_xfer_sender,limit=1]","color":"green"},{"text":" sent you ƌ","color":"green"},{"score":{"name":"#xfer_amt","objective":"econ_tmp"},"color":"green"},{"text":". Your current balance is ƌ","color":"green"},{"score":{"name":"*","objective":"bank"},"color":"green"},{"text":".","color":"green"}]

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
