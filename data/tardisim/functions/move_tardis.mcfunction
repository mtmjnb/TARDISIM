# From mat_tardis

# Cuts destination
clone ~-2 ~-1 ~-4 ~2 ~5 ~ to tardisim:tardis 1 1 1

# Place tardis
fill ~-1 ~-1 ~1 ~1 ~-1 ~-1 minecraft:cyan_terracotta
place template tardisim:exterior/first ~-2 ~ ~-2

# Moves tardis location
forceload add ~ ~
tp @e[type=marker,tag=tardis_location] ~ ~ ~