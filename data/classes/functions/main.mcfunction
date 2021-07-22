###################################################################
#                         DATAPACK INFO                           #
#                                                                 #
#     Author: Robified                                            #
#     Support:                                                    #
#     Special thanks to: CloudWolf for his slowcast datapack      #
#     which is used for specific spells!                          #
###################################################################

#Function for all new players, to ensure scoreboards are set up
execute if entity @a[tag=!Joined] as @a[tag=!Joined] run function classes:operations/newplayer

#Make sure equipSpell is always enabled for all players when reading/holding spellbook.
scoreboard players enable @a[predicate=classes:checkarmor/mage/spellbook] cl.equipSpell
scoreboard players reset @a[predicate=!classes:checkarmor/mage/spellbook] cl.equipSpell

#Display Mana bar to players
function classes:mage/mana/mana

#Mage Switching spells
execute if entity @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3}] as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3}] run function classes:mage/system/switch

#Healer Switching Spells
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=5}] run function classes:healer/wand/basewand/switch/slot1
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=1}] run function classes:healer/wand/basewand/switch/slot2
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=2}] run function classes:healer/wand/basewand/switch/slot3
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=3}] run function classes:healer/wand/basewand/switch/slot4
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=4}] run function classes:healer/wand/basewand/switch/slot5
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=1..5}] run scoreboard players add @s cl.currSpellSel 1
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=6}] run scoreboard players set @s cl.currSpellSel 1
#execute as @a[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=4,cl.currSpellSel=0}] run scoreboard players set @s cl.currSpellSel 1

#Check for players selecting "Clear Wand" in book
execute as @a[scores={cl.equipSpell=-1}] run function classes:operations/clearwand

#Check for triggers being activated to equip spell
execute as @a[scores={cl.equipSpell=1..,cl.loadSpell=0..5,cl.ReadBook=1..}] run function classes:equip

#Handle max spells, and messaging.
execute as @a[scores={cl.equipSpell=1..,cl.loadSpell=6}] run tellraw @s {"text":"You're maxed out. Clear your wand to equip other spells."}
execute as @a[scores={cl.equipSpell=1..,cl.loadSpell=6}] run scoreboard players reset @s cl.equipSpell


#Reset scoreboards
scoreboard players remove @a[scores={cl.Cooldown=1..}] cl.Cooldown 1
scoreboard players set @a cl.rightClick 0
scoreboard players set @a cl.Sneaking 0
scoreboard players set @a cl.Moved 0

#Mana Regen (subject to change) ManaRegenSec is 20 * # of seconds for point of Mana to regen every # of seconds (60 = 1 point of Mana every second)
scoreboard players add @a[scores={cl.ManaRegenSec=..59,cl.Mana=..9}] cl.ManaRegenSec 1
scoreboard players add @a[scores={cl.ManaRegenSec=60,cl.Mana=..9}] cl.Mana 1
scoreboard players set @a[scores={cl.ManaRegenSec=60}] cl.ManaRegenSec 1
