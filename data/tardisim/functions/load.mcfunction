# Runs on game load

# Sets up scoreboards
scoreboard objectives add world dummy
scoreboard objectives add tardis dummy
scoreboard players add $tardis_state world 0
scoreboard players add $demat tardis 0
scoreboard players add $state tardis 0

# Create tardis exterior if not already
execute if score $tardis_state world matches 0 positioned over motion_blocking_no_leaves run function tardisim:create_tardis_exterior