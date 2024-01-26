# Runs from interior

# Easy Notifications
execute if block ~1 ~ ~-1 polished_blackstone_button[powered=true] run title @a actionbar "Moving TARDIS Destination"
execute as @a at @s if entity @e[type=marker,tag=tardis_exit,distance=..0.5] if score $demat tardis matches 1 run title @a actionbar {"text":"Can't leave TARDIS while dematerialized","color":"red"}
execute as @a at @s if entity @e[type=marker,tag=tardis_exit,distance=..0.5] if score $door_lock tardis matches 1 run title @a actionbar {"text":"Can't leave TARDIS while door locked","color":"red"}
execute if score $door_lock tardis matches 1 as @a at @s if entity @e[type=marker,tag=tardis_location,distance=..1] if score $demat tardis matches 0 in tardisim:tardis run title @a actionbar {"text":"Can't enter TARDIS while door locked","color":"red"}

# Demat TARDIS
execute unless score $demat notification = $demat tardis if score $demat tardis matches 1 if score $door_lock tardis matches 0 run title @a actionbar {"text":"Can't dematerialize TARDIS while door unlocked","color":"red"}
execute unless score $demat notification = $demat tardis if score $demat tardis matches 1 run scoreboard players set $demat notification 1
execute unless score $demat notification = $demat tardis if score $demat tardis matches 0 run scoreboard players set $demat notification 0

# Chameleon Circuit
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 0 run title @a actionbar "Set Chameleon Circuit to: Police Box"
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 0 run scoreboard players set $chameleon notification 0
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 1 run title @a actionbar "Set Chameleon Circuit to: Cactus"
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 1 run scoreboard players set $chameleon notification 1
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 2 run title @a actionbar "Set Chameleon Circuit to: Tree"
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 2 run scoreboard players set $chameleon notification 2
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 3 run title @a actionbar "Set Chameleon Circuit to: Invisible"
execute unless score $chameleon notification = $chameleon tardis if score $chameleon tardis matches 3 run scoreboard players set $chameleon notification 3

# Control Labels
execute unless score $control_labels notification = $control_labels tardis if score $control_labels tardis matches 0 run title @a actionbar "Hiding Control Labels"
execute unless score $control_labels notification = $control_labels tardis if score $control_labels tardis matches 0 run scoreboard players set $control_labels notification 0
execute unless score $control_labels notification = $control_labels tardis if score $control_labels tardis matches 1 run title @a actionbar "Showing Control Labels"
execute unless score $control_labels notification = $control_labels tardis if score $control_labels tardis matches 1 run scoreboard players set $control_labels notification 1

# Rotation
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 0 run title @a actionbar "TARDIS Movement Facing: Northeast"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 0 run scoreboard players set $rotation notification 0
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 1 run title @a actionbar "TARDIS Movement Facing: East"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 1 run scoreboard players set $rotation notification 1
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 2 run title @a actionbar "TARDIS Movement Facing: Southeast"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 2 run scoreboard players set $rotation notification 2
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 3 run title @a actionbar "TARDIS Movement Facing: South"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 3 run scoreboard players set $rotation notification 3
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 4 run title @a actionbar "TARDIS Movement Facing: Southwest"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 4 run scoreboard players set $rotation notification 4
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 5 run title @a actionbar "TARDIS Movement Facing: West"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 5 run scoreboard players set $rotation notification 5
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 6 run title @a actionbar "TARDIS Movement Facing: Northwest"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 6 run scoreboard players set $rotation notification 6
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 7 run title @a actionbar "TARDIS Movement Facing: North"
execute unless score $rotation notification = $rotation tardis if score $rotation tardis matches 7 run scoreboard players set $rotation notification 7

# Time
execute unless score $time notification = $time tardis if score $time tardis matches 0 run title @a actionbar "Set Time to current time"
execute unless score $time notification = $time tardis if score $time tardis matches 0 run scoreboard players set $time notification 0
execute unless score $time notification = $time tardis if score $time tardis matches 1 run title @a actionbar "Set Time to 1/4 of a day"
execute unless score $time notification = $time tardis if score $time tardis matches 1 run scoreboard players set $time notification 1
execute unless score $time notification = $time tardis if score $time tardis matches 2 run title @a actionbar "Set Time to 1/2 of a day"
execute unless score $time notification = $time tardis if score $time tardis matches 2 run scoreboard players set $time notification 2
execute unless score $time notification = $time tardis if score $time tardis matches 3 run title @a actionbar "Set Time to 3/4 of a day"
execute unless score $time notification = $time tardis if score $time tardis matches 3 run scoreboard players set $time notification 3

# Door Lock
execute unless score $door_lock notification = $door_lock tardis if score $door_lock tardis matches 0 run title @a actionbar "TARDIS Doors Unlocked"
execute unless score $door_lock notification = $door_lock tardis if score $door_lock tardis matches 0 run scoreboard players set $door_lock notification 0
execute unless score $door_lock notification = $door_lock tardis if score $door_lock tardis matches 1 run title @a actionbar "TARDIS Doors Locked"
execute unless score $door_lock notification = $door_lock tardis if score $door_lock tardis matches 1 run scoreboard players set $door_lock notification 1