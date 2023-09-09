# Runs from interior

# TODO: Add delay

# Plays sound effect
playsound minecraft:block.bell.use ambient @a ~-1 ~ ~-1 3 .5

# Sets the tardis to demat
scoreboard players set $state tardis 0
setblock 24 124 30 minecraft:redstone_lamp[lit=false]

# Deals with time
execute if score $time tardis matches 0 run time add 0.2d
execute if score $time tardis matches 1 run time add 0.4d
execute if score $time tardis matches 2 run time add 0.6d
execute if score $time tardis matches 3 run time add 0.8d
scoreboard players set $time tardis 0

# Moves tardis
execute in minecraft:overworld at @e[type=marker,tag=tardis_destination] align xyz positioned ~0.5 ~ ~0.5 positioned over motion_blocking_no_leaves run function tardisim:move_tardis

# Notification
title @a actionbar "TARDIS Materialising"