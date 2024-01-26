# Runs on game load

# Sets up scoreboards
scoreboard objectives add world dummy
scoreboard objectives add tardis dummy
scoreboard objectives add notification dummy
scoreboard objectives add delay dummy
scoreboard objectives add loop dummy
scoreboard objectives add consts dummy
scoreboard players add $tardis_state world 0
scoreboard players add $time_lords world 0
scoreboard players add $demat tardis 0
scoreboard players add $state tardis 0
scoreboard players add $chameleon tardis 0
scoreboard players add $rotation tardis 0
scoreboard players add $control_labels tardis 0
scoreboard players add $door_lock tardis 0
scoreboard players add $key tardis 0
scoreboard players add $chameleon notification 0
scoreboard players add $control_labels notification 0
scoreboard players add $rotation notification 0
scoreboard players add $door_lock notification 0
scoreboard players add $demat notification 0
scoreboard players add $time notification 0
scoreboard players set 1 consts 1

# Create tardis exterior if not already
execute if score $tardis_state world matches 0 positioned over motion_blocking_no_leaves run function tardisim:create_tardis_exterior