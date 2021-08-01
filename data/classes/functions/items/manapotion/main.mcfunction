#Test for potion being held
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:thick",CustomPotionColor:16777215}}}] cl.i.ManaPotion 1

#Restore Mana if potion is drank
execute as @a[scores={cl.i.ManaPotion=1,cl.i.usedPotion=1..}] run scoreboard players set @s cl.Mana 10

#Sound effect if potion drank
execute as @a[scores={cl.i.ManaPotion=1,cl.i.usedPotion=1..}] run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2

#Reset cl.i.usedPotion
scoreboard players set @a cl.i.usedPotion 0

#Remove score if potion not selected.
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:potion",Count:1b,tag:{Potion:Mana,Potion:"minecraft:thick",CustomPotionColor:16777215}}}] cl.i.ManaPotion 0