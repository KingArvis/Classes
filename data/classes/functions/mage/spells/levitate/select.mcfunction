# Test for wand type, replace with CustomModelData that has appropriate crystal.
# Mage uses 10000-20000 CustomModelData
# Ending numbers for consistency: Magic/Unspecified: 0, Earth: 1, Air: 2, Fire: 3, Water: 4
item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"Starter"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:10002,Spell:"Levitate",Wand:1b,Type:"Starter",display:{Name:'[{"text":"Wand","color":"dark_purple"},{"text":" - "},{"text":"Levitate","color":"#FFFF80","italic":true}]'}}
item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"WhiteStaff"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:601,Spell:"Levitate",Wand:1b,Type:"WhiteStaff",display:{Name:'[{"text":"Wand","color":"dark_purple"},{"text":" - "},{"text":"Levitate","color":"#FFFF80","italic":true}]'}}

#Title - Show spell name on select
title @s times 20 100 20
title @s subtitle {"text":"Lift target into the air.","color":"dark_aqua"}
title @a title ["",{"text":"Levitate","color":"#FFFF80"},{"text":" (2 Mana)","color":"#265ED6"}]
