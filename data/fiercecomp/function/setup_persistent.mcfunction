scoreboard objectives add world_logic dummy
scoreboard objectives add gamerules dummy
scoreboard objectives add voucher_level dummy
scoreboard objectives add patrol_logic dummy

scoreboard players set .global_vouch gamerules 1
scoreboard players set .output_to_chat gamerules 0

scoreboard players set .enabled patrol_logic 0
scoreboard players set .gametime_threshold patrol_logic 120000
scoreboard players set .spawn_delay patrol_logic 13200
scoreboard players set .frequency patrol_logic 20

scoreboard players set .npc_loot_enabled entity_logic 0
scoreboard players set .traders_enabled entity_logic 1