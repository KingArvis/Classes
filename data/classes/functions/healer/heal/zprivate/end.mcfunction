execute as @e[tag=!slowcast,scores={slo_id=1..}] if score @s slo_id = @e[type=marker,tag=slowcast,limit=1,sort=nearest] slo_id run scoreboard players reset @s slo_id
kill @s
