tellraw @a ["",{"text":"Fierce Competition ","color":"yellow"},{"text":"BETA","color":"red"},{"text":" - Loaded","color":"yellow"}]
scoreboard objectives add player_deaths deathCount

# This makes it so that every player that hasn't won any badges gets their voucher level set to 1 (no vouch)
execute as @a[advancements={fiercecomp:won_leader/herh=false,fiercecomp:won_leader/blarr=false}] run scoreboard players set @s voucher_level 1

scoreboard players set @a cutscene_logic 0
scoreboard players set @a patrol_logic 101
scoreboard players set @a npc_cooldown 0