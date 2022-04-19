# Display Particles
particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.1 10

# Play sound when it finishes
execute if entity @s[scores={cl.item.spiritessence=5..}] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5

# Remove cl.SpiritEssence tag
execute if entity @s[scores={cl.item.spiritessence=5..}] run data remove entity @s Item.tag."cl.SpiritEssence"

# Merge appropriate info to it
execute if entity @s[scores={cl.item.spiritessence=5..}] run data merge entity @s {Item:{tag:{CustomModelData:101,Fire:1b,display:{Name:'{"text":"Fire Essence","color":"red","italic":true}'}}}}
