execute as @e[type=#classes:raycast,scores={cl.slo_id=1..}] if score @s cl.slo_id = @e[type=marker,tag=cl.r.slowcast,limit=1,sort=nearest] cl.slo_id run tag @s add cl.r.this

scoreboard players operation #temp cl.slowcast = @s cl.slo_dst_per
execute if score @s cl.slo_dst matches 1.. run function classes:mage/spells/water/waterstrike/raycast
scoreboard players operation @s cl.slo_dst -= @s cl.slo_dst_per
execute if score @s cl.slo_dst matches ..0 at @s run function classes:mage/spells/water/waterstrike/zprivate/end

tag @e[type=#classes:raycast,tag=cl.r.this] remove cl.r.this
