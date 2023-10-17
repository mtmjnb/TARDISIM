# Runs from demat_tardis

# Reset delay
scoreboard players set $demat_tardis delay 0
scoreboard players set $demat_tardis_count delay 0

# Loop sound
playsound minecraft:entity.blaze.ambient ambient @a ~-1 ~ ~-1 2 .5
scoreboard players set $demat_sound loop 1