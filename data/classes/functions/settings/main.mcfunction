tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "}
tellraw @s ["",{"text":"------------------------------","color":"dark_aqua"},{"text":"\n"},{"text":"[Settings] - Classes Datapack","bold":true,"color":"dark_green"},{"text":"\n"},{"text":"------------------------------","color":"dark_aqua"}]
execute if score #cl.pref cl.p.setFire matches 0 run tellraw @s ["",{"text":"Fire spells can light blocks on fire","color":"gold","hoverEvent":{"action":"show_text","contents":"If you turn this on, it is highly recommended you do /gamerule doFireTick false"}},{"text":" - "},{"text":"[OFF]","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute as @s run function classes:settings/setfire/off"}},{"text":" "},{"text":"[ON]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function classes:settings/setfire/on"}}]
execute if score #cl.pref cl.p.setFire matches 1 run tellraw @s ["",{"text":"Fire spells can light blocks on fire","color":"gold","hoverEvent":{"action":"show_text","contents":"If you turn this on, it is highly recommended you do /gamerule doFireTick false"}},{"text":" - "},{"text":"[OFF]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s run function classes:settings/setfire/off"}},{"text":" "},{"text":"[ON]","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function classes:settings/setfire/on"}}]