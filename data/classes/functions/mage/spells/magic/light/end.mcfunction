execute positioned ^ ^ ^-0.25 run summon minecraft:marker ^ ^ ^-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.light","cl.counter","cl.place"]}
execute as @e[type=marker,tag=cl.light,tag=cl.counter,tag=cl.place] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:light keep
execute as @e[type=marker,tag=cl.light,tag=cl.counter,tag=cl.place] run tag @s remove cl.place
scoreboard players set @e[type=marker,tag=cl.light,tag=cl.counter,sort=nearest,limit=1] cl.e.Light 1200
scoreboard players reset @s cl.slo_id
scoreboard players reset @s cl.slo_dst_per
scoreboard players reset @s cl.slo_dst
