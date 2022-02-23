#Apply Effects
execute as @s run scoreboard players set @s cl.HitBySpell 100
execute as @s run function classes:main/loot_table/main
execute as @s run playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.5 1.3
execute as @s run data merge entity @s {Fire:200}
execute as @s[type=creeper] run function classes:entities/vanilla/creeper/fire
execute as @s[type=!#classes:undead] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[type=#classes:undead] run effect give @s minecraft:instant_health 1 1 true
execute as @s[type=witch] run effect give @s minecraft:instant_damage 1 3 true
execute as @s at @s run particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.01 30 normal
execute as @s[predicate=classes:entities/angry] at @s run function classes:entities/vanilla/angry