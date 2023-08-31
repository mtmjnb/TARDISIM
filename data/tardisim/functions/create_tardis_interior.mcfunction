# Runs from tick

# Place tardis interior
place template tardisim:interior/first 0 100 0
execute positioned 9 101 1 run summon minecraft:marker ~ ~ ~ {Tags:["tardis_exit"]}

# Adds location outline
fill 0 0 0 6 8 6 minecraft:bedrock outline

# Stops tardis being generated again
scoreboard players set $tardis_state world 3

# Tp to tardis entrance
tp @p 9 101 2 0 0