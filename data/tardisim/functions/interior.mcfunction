# Runs from tick

# Exits tardis when in exit door
execute as @a at @s if entity @e[type=marker,tag=tardis_exit,distance=..0.5] at @e[type=marker,tag=tardis_location,limit=1] run tp @s ^ ^ ^2 ~ ~

# Demat and mat tardis
execute if block ~-1 ~ ~-1 minecraft:lever[powered=false] run scoreboard players set $demat tardis 0
execute if block ~-1 ~ ~-1 minecraft:lever[powered=true] run scoreboard players set $demat tardis 1
execute unless score $demat tardis = $state tardis if score $demat tardis matches 0 run function tardisim:mat_tardis
execute unless score $demat tardis = $state tardis if score $demat tardis matches 1 run function tardisim:demat_tardis

# Deals with time
execute if block ~ ~ ~1 repeater[delay=1,powered=true] run scoreboard players set $time tardis 1
execute if block ~ ~ ~1 repeater[delay=2,powered=true] run scoreboard players set $time tardis 2
execute if block ~ ~ ~1 repeater[delay=3,powered=true] run scoreboard players set $time tardis 3
execute if block ~ ~ ~1 repeater[delay=4,powered=true] run scoreboard players set $time tardis 4

# Deals with space
execute if block ~1 ~ ~-1 polished_blackstone_button[powered=true] positioned ~ ~ ~-1 run function tardisim:tardis_destination