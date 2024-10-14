advancement revoke @s only mon:help

scoreboard players enable @s help
scoreboard players set @s help 0

tellraw @p ["",{"text":"/trigger help","bold":false,"color":"yellow"},{"color":"gray","text":" to view all commands"}]
tellraw @p ["",{"text":"/trigger withdraw","bold":false,"color":"yellow"},{"color":"gray","text":" to withdraw money from your bank"}]