# Runs from interior

# Deals with space
execute at @e[type=marker,tag=tardis_destination] run forceload remove ~ ~
execute as @e[type=item_frame,limit=1,distance=..1] if data entity @s Item store result score $rotation tardis run data get entity @s ItemRotation
execute if score $rotation tardis matches 0 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ -135 0
execute if score $rotation tardis matches 1 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ -45 0
execute if score $rotation tardis matches 2 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ -90 0
execute if score $rotation tardis matches 3 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ 0 0
execute if score $rotation tardis matches 4 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ 45 0
execute if score $rotation tardis matches 5 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ 90 0
execute if score $rotation tardis matches 6 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ 135 0
execute if score $rotation tardis matches 7 in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ~ ~ ~ 180 0
execute at @e[type=marker,tag=tardis_destination] run forceload add ~ ~