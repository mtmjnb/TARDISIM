# From mat_tardis

# Clones destination
clone ~-2 ~-1 ~-2 ~2 ~6 ~2 to tardisim:tardis 1 1 1

# Place tardis
execute if score $chameleon tardis matches 0 run function tardisim:tardis_exterior/one
execute if score $chameleon tardis matches 1 run function tardisim:tardis_exterior/cactus
execute if score $chameleon tardis matches 2 run function tardisim:tardis_exterior/tree

# Moves tardis location
forceload remove all
forceload add ~ ~
tp @e[type=marker,tag=tardis_location] ~ ~ ~
tp @e[type=marker,tag=tardis_destination] ~ ~ ~