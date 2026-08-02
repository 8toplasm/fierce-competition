execute store result score .game_time world_logic run time query gametime

# This isn't ran through a schedule loop because it needs to be tick-perfect
execute as @e[type=drowned, tag=!Scanned, sort=random] if score .traders_enabled entity_logic matches 1 run function fiercecomp:entity_sys/trader/drowned_trader_spawn

execute if score .game_time world_logic >= .gametime_threshold patrol_logic if score .current_delay patrol_logic >= .1 world_logic run scoreboard players remove .current_delay patrol_logic 1
execute as @a at @s in minecraft:overworld if score .current_delay patrol_logic matches 0 if score .enabled patrol_logic matches 1 run function fiercecomp:entity_sys/pillager/summon_patrol
execute as @e[type=cobblemon:pokemon, tag=illager_seat] at @s run tp @n[type=armor_stand, tag=illager_seat, distance=..7] ~ ~2.1 ~ ~ ~

execute as @a if score @s player_deaths >= .1 world_logic run tag @s remove has_hit_mob
execute as @a if score @s player_deaths >= .1 world_logic run scoreboard players reset @s player_deaths