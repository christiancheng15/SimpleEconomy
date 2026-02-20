scoreboard objectives remove bank
scoreboard objectives remove withdraw
scoreboard objectives remove deposit
scoreboard objectives remove transfer
scoreboard objectives remove transfer_pick
scoreboard objectives remove transfer_next
scoreboard objectives remove transfer_prev
scoreboard objectives remove balance
scoreboard objectives remove atm
scoreboard objectives remove help
scoreboard objectives remove econ_tmp
scoreboard objectives remove xfer_amt
scoreboard objectives remove xfer_page

data remove storage minecraft:econ_temp root

tellraw @p ["",{"text":"SimpleEconomy ","bold":true,"color":"yellow"},"has been uninstalled successfully"]
tellraw @p ["","Use the command ",{"text":"/datapack enable \"file/SimpleEconomy\" ","bold":true,"color":"yellow","click_event":{"action":"copy_to_clipboard","value":"/datapack enable \"file/SimpleEconomy\" "},"hover_event":{"action":"show_text","value":{"text":"Click here to add this command to your clipboard"}}},"to reinstall"]
datapack disable "file/SimpleEconomy"
