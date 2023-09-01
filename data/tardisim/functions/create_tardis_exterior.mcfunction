# Runs from load

# Clone the world to the tardis dimension
execute in tardisim:tardis run forceload add 1 1
clone ~-2 ~-1 ~-4 ~2 ~6 ~ to tardisim:tardis 1 1 1
execute in tardisim:tardis run forceload remove 1 1

# Place tardis
fill ~-1 ~-1 ~-1 ~1 ~-1 ~-3 minecraft:cyan_terracotta
place template tardisim:exterior/first ~-2 ~ ~-4
execute align xyz run summon minecraft:marker ~0.5 ~ ~-1.5 {Tags:["tardis_location"]}
execute align xyz run summon minecraft:marker ~0.5 ~ ~-1.5 {Tags:["tardis_destination"]}

scoreboard players set $tardis_state world 1