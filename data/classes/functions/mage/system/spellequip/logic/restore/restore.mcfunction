scoreboard players reset @s change
clear @s

execute positioned ~ -70 ~ run function classes:mage/system/spellequip/logic/restore/restoreinventory
execute positioned ~ -70 ~ run kill @e[type=minecraft:chest_minecart,sort=nearest,limit=1,tag=cl.minecart.inventory]

execute positioned ~ -71 ~ run function classes:mage/system/spellequip/logic/restore/restorehotbar
execute positioned ~ -71 ~ run kill @e[type=minecraft:chest_minecart,sort=nearest,limit=1,tag=cl.minecart.hotbar]

scoreboard players set @s cl.spellMenu -4