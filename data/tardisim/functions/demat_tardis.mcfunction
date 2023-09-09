# Runs from interior

# Sets tardis to demat
scoreboard players set $state tardis 1
setblock 24 124 30 minecraft:redstone_lamp[lit=true]

# Moves old destination of tardis back
execute in minecraft:overworld at @e[type=marker,tag=tardis_location] positioned ~1 ~1 ~2 run kill @e[type=item_frame,limit=1,distance=..1]
execute in minecraft:overworld at @e[type=marker,tag=tardis_location] positioned ~ ~ ~1 run setblock ~ ~ ~ minecraft:air
execute in minecraft:overworld at @e[type=marker,tag=tardis_location] run clone from tardisim:tardis 1 1 1 5 8 5 ~-2 ~-1 ~-2 replace move

# Sound effects
playsound minecraft:block.bell.use ambient @a ~-1 ~ ~-1 3 .5
# TODO: Add delay then looping
playsound minecraft:entity.blaze.ambient ambient @a ~-1 ~ ~-1 2 .5

# Notification
title @a actionbar "TARDIS Dematerialising"