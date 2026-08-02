execute if score .npc_loot_enabled entity_logic matches 1 run scoreboard players set .temp world_logic 0
execute if score .npc_loot_enabled entity_logic matches 0 run scoreboard players set .temp world_logic 1
scoreboard players reset .npc_loot_enabled entity_logic
execute store result score .npc_loot_enabled entity_logic run scoreboard players get .temp world_logic
scoreboard players reset .temp world_logic

tellraw @a ["",{"text":"NPC loot has been toggled: ","bold":true,"color":"red"},{"score":{"name":".npc_loot_enabled","objective":"entity_logic"},"bold":true,"color":"green"},{"text":"b","bold":true,"color":"green"}]