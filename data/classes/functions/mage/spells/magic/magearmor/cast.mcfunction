##Executing as player who just right-clicked (mage/system/castspell/magicspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=8..},advancements={classes:mage/learnspell/magic/magearmor=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=8..},advancements={classes:mage/learnspell/magic/magearmor=true}] run function classes:mage/spells/magic/magearmor/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=8..},advancements={classes:mage/learnspell/magic/magearmor=false}] run function classes:main/mana_system/mage/noknowledge
