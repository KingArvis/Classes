#Particle Effect
particle cloud ^0.4 ^0.2 ^0.3 0.1 0.1 0.1 0.05 2 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5

#Detect mobs, then do effects
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:nonmob,tag=!cl.summoned,tag=!cl.Owned] at @s run function classes:mage/spells/air/levitate/effects/mob

#Only change paths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/air/levitate/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/air/levitate/raycast
