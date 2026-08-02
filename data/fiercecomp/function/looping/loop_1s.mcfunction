execute as @e[type=wandering_trader, tag=!has_trade] if score .traders_enabled entity_logic matches 1 run function fiercecomp:entity_sys/trader/trades
execute as @a if score @s npc_cooldown >= .1 world_logic run scoreboard players remove @s npc_cooldown 1

schedule function fiercecomp:looping/loop_1s 1s