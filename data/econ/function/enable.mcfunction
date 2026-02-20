scoreboard players add @a bank 0
scoreboard players enable @a withdraw
scoreboard players enable @a deposit
scoreboard players enable @a transfer
scoreboard players add @a transfer 0
execute as @a[scores={transfer=0}] run tellraw @s {"text":"Please specify an amount: /trigger transfer set <qty>","color":"red"}
execute as @a[scores={transfer=0}] run scoreboard players set @s transfer -1
scoreboard players enable @a balance
scoreboard players enable @a atm
scoreboard players enable @a help

execute as @a[scores={atm=1..}] run function econ:bank/atm
execute as @a[scores={help=1..}] run function econ:help
