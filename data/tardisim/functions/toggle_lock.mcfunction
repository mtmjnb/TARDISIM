# Runs from interior
forceload add ~ ~
execute if score $door_lock tardis matches 0 run setblock ~-1 ~ ~1 minecraft:comparator[facing=east,mode=subtract]
execute if score $door_lock tardis matches 1 run setblock ~-1 ~ ~1 minecraft:comparator[facing=east,mode=compare]
scoreboard players set $key tardis 1