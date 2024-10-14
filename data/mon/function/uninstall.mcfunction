scoreboard objectives remove bank
scoreboard objectives remove withdraw

data remove storage mon_temp root

tellraw @p ["",{"text":"Monee ","bold":true,"color":"yellow"},"has been uninstalled successfully"]
tellraw @p ["","Use the command ",{"text":"/datapack enable \"file/Monee\" ","bold":true,"color":"yellow","clickEvent":{"action":"copy_to_clipboard","value":"/datapack enable \"file/Monee\" "},"hoverEvent":{"action":"show_text","contents":["Click here to add this command to your clipboard"]}},"to reinstall"]
datapack disable "file/Monee"