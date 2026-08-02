execute unless score .npc_loot_enabled entity_logic matches 1 run return fail
execute unless score @p npc_cooldown matches 0 run return run tellraw @p {"text":"Please wait a bit before re-looting NPCs...","color":"red"}
scoreboard players set @p npc_cooldown 1800
loot give @p loot fiercecomp:npc/grandma