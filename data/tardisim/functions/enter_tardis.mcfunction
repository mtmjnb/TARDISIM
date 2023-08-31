# Runs from tick

# Tp to tardis entrance
tp @s 9 101 2 0 0

# Loads tardis interior if not already
execute if score $tardis_state world matches 1 run scoreboard players set $tardis_state world 2