execute store result score @s cl.motion_x1 run data get entity @s Pos[0] 100000
execute store result score @s cl.motion_y1 run data get entity @s Pos[1] 100000
execute store result score @s cl.motion_z1 run data get entity @s Pos[2] 100000

tp @s ^ ^ ^0.1

execute store result score @s cl.motion_x2 run data get entity @s Pos[0] 100000
execute store result score @s cl.motion_y2 run data get entity @s Pos[1] 100000
execute store result score @s cl.motion_z2 run data get entity @s Pos[2] 100000

execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s cl.motion_x2 -= @s cl.motion_x1
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s cl.motion_y2 -= @s cl.motion_y1
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s cl.motion_z2 -= @s cl.motion_z1

execute store result score @s[type=#classes:fireballs] cl.power_0 run data get entity @s power[0] -10000000
execute store result score @s[type=#classes:fireballs] cl.power_1 run data get entity @s power[1] -10000000
execute store result score @s[type=#classes:fireballs] cl.power_2 run data get entity @s power[2] -10000000
execute store result entity @s[type=#classes:fireballs] power[0] double 0.00000005 run scoreboard players get @s cl.power_0
execute store result entity @s[type=#classes:fireballs] power[1] double 0.00000005 run scoreboard players get @s cl.power_1
execute store result entity @s[type=#classes:fireballs] power[2] double 0.00000005 run scoreboard players get @s cl.power_2

tag @s add motion_added