##Executing as player who just right-clicked (mage/system/castspell/airspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/air/bunnyhop=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/air/bunnyhop=true}] run function classes:mage/spells/air/bunnyhop/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/air/bunnyhop=false}] run function classes:main/mana_system/mage/noknowledge
