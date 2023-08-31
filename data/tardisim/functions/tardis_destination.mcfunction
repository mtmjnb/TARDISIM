# Runs from interior

# Deals with space
execute at @e[type=marker,tag=tardis_destination] run forceload remove ~ ~
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:0b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~5 ~ ~-5
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:1b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~5 ~ ~
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:2b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~5 ~ ~5
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:3b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~5
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:4b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~-5 ~ ~5
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:5b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~-5 ~ ~
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:6b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~-5 ~ 5
execute if entity @e[type=item_frame,limit=1,distance=..1,nbt={ItemRotation:7b}] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~-5
execute at @e[type=marker,tag=tardis_destination] run forceload add ~ ~