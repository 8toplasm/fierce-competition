scoreboard objectives add persistence dummy

# Persistence checks are run to make sure we aren't overriding any values that do not need overriding
execute unless score .enabled persistence matches 1 run function fiercecomp:setup_persistent

# Now we can create any scoreboards that need to be restarted
scoreboard objectives add entity_logic dummy
scoreboard objectives add cutscene_logic dummy
scoreboard objectives add npc_cooldown dummy

scoreboard players set .1 world_logic 1
scoreboard players set .drowned_trader_count entity_logic 0
scoreboard players set .temp gamerules 0
execute store result score .current_delay patrol_logic run scoreboard players get .spawn_delay patrol_logic

# Once all is set and done, enable persistence
scoreboard players set .enabled persistence 1