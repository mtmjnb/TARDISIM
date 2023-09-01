# Runs every tick

# Enter tardis if touching the location of the tardis
execute as @a at @s if entity @e[type=marker,tag=tardis_location,distance=..1] in tardisim:tardis run function tardisim:enter_tardis

# Creates tardis interior if not already and loaded
execute if score $tardis_state world matches 2 in tardisim:tardis if loaded 0 100 0 run function tardisim:create_tardis_interior

# Runs commands in tardis
execute in tardisim:tardis positioned 9 102 12 run function tardisim:interior