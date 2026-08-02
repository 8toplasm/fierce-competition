execute at @s if score .drowned_trader_count entity_logic matches 0 run summon wandering_trader ~ ~ ~ {Tags:["drowned_trader"],ArmorItems:[{},{id:"minecraft:rotten_flesh",count:1},{id:"minecraft:rotten_flesh",count:1},{}],ArmorDropChances:[0.085F,0.500F,0.500F,0.085F],active_effects:[{id:"minecraft:water_breathing",amplifier:3,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.gravity",base:0.55}]}
execute if score .drowned_trader_count entity_logic matches 0 run tp @s ~ ~-256 ~

execute at @s if score .drowned_trader_count entity_logic matches 3 run summon wandering_trader ~ ~ ~ {Tags:["drowned_trader", "trustworthy"],ArmorItems:[{},{id:"minecraft:rotten_flesh",count:1},{id:"minecraft:rotten_flesh",count:1},{}],ArmorDropChances:[0.085F,0.500F,0.500F,0.085F],active_effects:[{id:"minecraft:water_breathing",amplifier:3,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.gravity",base:0.55}]}
execute if score .drowned_trader_count entity_logic matches 3 run tp @s ~ ~-256 ~

# Used to avoid repetition
tag @s add Scanned
scoreboard players add .drowned_trader_count entity_logic 1
execute if score .drowned_trader_count entity_logic matches 7 run scoreboard players set .drowned_trader_count entity_logic 0