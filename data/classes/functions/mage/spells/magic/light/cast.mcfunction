##Executing as player who just right-clicked (mage/system/castspell/firespell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/magic/light=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/magic/light=true}] run function classes:mage/spells/magic/light/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/magic/light=false}] run function classes:main/mana_system/mage/noknowledge
