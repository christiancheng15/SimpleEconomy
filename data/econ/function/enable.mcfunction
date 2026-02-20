scoreboard players add @a bank 0
scoreboard players enable @a withdraw
scoreboard players enable @a deposit
scoreboard players enable @a transfer
scoreboard players enable @a balance
scoreboard players enable @a leaderboard
scoreboard players enable @a atm
scoreboard players enable @a help

execute as @a[scores={atm=1..}] run function econ:bank/atm
execute as @a[scores={help=1..}] run function econ:help
