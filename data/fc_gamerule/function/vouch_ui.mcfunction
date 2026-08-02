execute if score .global_vouch world_logic matches 1 run scoreboard players set .temp world_logic 0
execute if score .global_vouch world_logic matches 0 run scoreboard players set .temp world_logic 1
scoreboard players reset .global_vouch world_logic
execute store result score .global_vouch world_logic run scoreboard players get .temp world_logic
scoreboard players reset .temp world_logic

tellraw @a ["",{"text":"Voucher UIs have been toggled: ","bold":true,"color":"red"},{"score":{"name":".global_vouch","objective":"world_logic"},"bold":true,"color":"green"},{"text":"b","bold":true,"color":"green"}]

execute if score .global_vouch world_logic matches 1 run tag @a remove local_vouch_disabled
execute if score .global_vouch world_logic matches 0 run tag @a add local_vouch_disabled