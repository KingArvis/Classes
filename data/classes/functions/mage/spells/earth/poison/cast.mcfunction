##Executing as player who just right-clicked (mage/system/castspell/earthspell)

#Not Enough Mana
execute unless entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/earth/poison=true}] run function classes:main/mana_system/nomana

#Raycast
execute if entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/earth/poison=true}] at @s run function classes:mage/spells/earth/poison/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/earth/poison=false}] at @s run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/earth/poison
