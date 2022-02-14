# Levitate
execute if entity @p[advancements={classes:mage/learnspell/air/levitate=true},distance=..3] if block ~ ~ ~ dropper{Items:[{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:structure_block",tag:{Air:1b}},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"}]} unless data block ~ ~ ~ {Items:[{Slot:0b}]} unless data block ~ ~ ~ {Items:[{Slot:2b}]} unless data block ~ ~ ~ {Items:[{Slot:6b}]} unless data block ~ ~ ~ {Items:[{Slot:8b}]} run function classes:crafting/magictable/recipes/mage/spells/air/levitate

# Slow Fall
execute if entity @p[advancements={classes:mage/learnspell/air/slowfall=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Air:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Air:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:10b,Slot:4b,id:"minecraft:phantom_membrane"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Air:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Air:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/air/slowfall

# Bunny Hop
execute if entity @p[advancements={classes:mage/learnspell/air/bunnyhop=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Air:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Air:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:4b,id:"minecraft:rabbit_foot"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Air:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Air:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/air/bunnyhop

# Tail Wind
execute if entity @p[advancements={classes:mage/learnspell/air/tailwind=true},distance=..3] if block ~ ~ ~ dropper{Items:[{Count:1b,Slot:0b,id:"minecraft:structure_block",tag:{Air:1b}},{id:"minecraft:lapis_lazuli",Count:1b,Slot:1b},{Count:1b,Slot:2b,id:"minecraft:structure_block",tag:{Air:1b}},{Count:1b,Slot:3b,id:"minecraft:lapis_lazuli"},{Count:10b,Slot:4b,id:"minecraft:sugar"},{Count:1b,Slot:5b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:6b,id:"minecraft:structure_block",tag:{Air:1b}},{Count:1b,Slot:7b,id:"minecraft:lapis_lazuli"},{Count:1b,Slot:8b,id:"minecraft:structure_block",tag:{Air:1b}}]} run function classes:crafting/magictable/recipes/mage/spells/air/tailwind