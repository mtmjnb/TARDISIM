# Runs every tick

# Enter tardis if touching the location of the tardis
execute if score $door_lock tardis matches 0 as @a at @s if entity @e[type=marker,tag=tardis_location,distance=..1] if score $demat tardis matches 0 in tardisim:tardis run function tardisim:enter_tardis

# Creates tardis interior if not already and loaded
execute if score $tardis_state world matches 2 in tardisim:tardis if loaded 0 100 0 run function tardisim:create_tardis_interior

# Runs commands in tardis
execute in tardisim:tardis positioned 24 122 25 run function tardisim:interior

execute if score $time_lords world < 1 consts as @a[tag=!time_lord] run function tardisim:setup_player