execute as @e[tag=!slowcast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=slowcast,tag=levitate,limit=1,sort=nearest] cl.slo_id run function classes:mage/spells/air/levitate/end
scoreboard players reset @s cl.slo_dst
scoreboard players reset @s cl.slo_dst_per
kill @s