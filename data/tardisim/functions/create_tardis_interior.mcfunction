# Runs from tick

# Place tardis interior
place template tardisim:interior/one 0 100 0
execute positioned 24 121 14 run summon minecraft:marker ~ ~ ~ {Tags:["tardis_exit"]}

# Summons the Control Labels 
execute positioned 24.5 122.3 25.5 run function tardisim:control_labels 

# Adds location outline
fill 0 0 0 6 9 6 minecraft:bedrock outline

# Stops tardis being generated again
scoreboard players set $tardis_state world 3

# Tp to tardis entrance
tp @p 24 121 15 0 0