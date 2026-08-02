execute if score .enabled patrol_logic matches 1 run scoreboard players set .temp world_logic 0
execute if score .enabled patrol_logic matches 0 run scoreboard players set .temp world_logic 1
scoreboard players reset .enabled patrol_logic
execute store result score .enabled patrol_logic run scoreboard players get .temp world_logic
scoreboard players reset .temp world_logic

tellraw @a ["",{"text":"Patrols have been toggled: ","bold":true,"color":"red"},{"score":{"name":".enabled","objective":"patrol_logic"},"bold":true,"color":"green"},{"text":"b","bold":true,"color":"green"}]