#Runs when player tames an animal.

execute at @s as @e[type=#classes:ownable,tag=!cl.Owned,distance=..10] if data entity @s Owner run tag @s add cl.Owned
advancement revoke @s only classes:tameanimal
