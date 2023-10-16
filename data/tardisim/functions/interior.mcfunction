# Runs from tick

# Exits tardis when in exit door
execute as @a at @s if entity @e[type=marker,tag=tardis_exit,distance=..0.5] if score $demat tardis matches 0 at @e[type=marker,tag=tardis_location,limit=1] run tp @s ^ ^ ^1 ~ ~

# Demat and mat tardis
execute if block ~-1 ~ ~-1 minecraft:lever[powered=false] run scoreboard players set $demat tardis 0
execute if block ~-1 ~ ~-1 minecraft:lever[powered=true] run scoreboard players set $demat tardis 1
execute unless score $demat tardis = $state tardis if score $demat tardis matches 0 run function tardisim:mat_tardis
execute unless score $demat tardis = $state tardis if score $demat tardis matches 1 run function tardisim:demat_tardis

# Deals with time
execute if block ~ ~ ~1 repeater[delay=1,powered=true] run scoreboard players set $time tardis 0
execute if block ~ ~ ~1 repeater[delay=2,powered=true] run scoreboard players set $time tardis 1
execute if block ~ ~ ~1 repeater[delay=3,powered=true] run scoreboard players set $time tardis 2
execute if block ~ ~ ~1 repeater[delay=4,powered=true] run scoreboard players set $time tardis 3

# Deals with space
execute if block ~1 ~ ~-1 polished_blackstone_button[powered=true] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run tp @s ^ ^ ^5 
execute if block ~1 ~ ~-1 polished_blackstone_button[powered=true] in minecraft:overworld as @e[type=marker,tag=tardis_destination] at @s run forceload add ~ ~
execute positioned ~ ~ ~-1 run function tardisim:rotate_movement

# Chameleon Circuit
execute if block ~-1 ~ ~ repeater[delay=1] run scoreboard players set $chameleon tardis 0
execute if block ~-1 ~ ~ repeater[delay=2] run scoreboard players set $chameleon tardis 1
execute if block ~-1 ~ ~ repeater[delay=3] run scoreboard players set $chameleon tardis 2
execute if block ~-1 ~ ~ repeater[delay=4] run scoreboard players set $chameleon tardis 3

# Control Labels
execute if block ~1 ~ ~ comparator[mode=compare] run execute as @e[type=minecraft:text_display] run data merge entity @s {view_range:0.0f}
execute if block ~1 ~ ~ comparator[mode=compare] run scoreboard players set $control_labels tardis 0
execute if block ~1 ~ ~ comparator[mode=subtract] run execute as @e[type=minecraft:text_display] run data merge entity @s {view_range:1.0f}
execute if block ~1 ~ ~ comparator[mode=subtract] run scoreboard players set $control_labels tardis 1

# Notifications
function tardisim:notifications