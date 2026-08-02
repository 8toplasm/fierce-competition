# Make all illager mobs target NPCs
execute as @e[type=#illager, tag=!is_targetting_npc] at @s run target @s @n[type=cobblemon:npc, distance=..32]
execute as @e[type=#illager_friends, tag=!is_targetting_npc] at @s run target @s @n[type=cobblemon:npc, distance=..32]

# Now, to prevent excessive retargetting, tag everyone that's already focused on an NPC
execute as @e[type=#illager, tag=!is_targetting_npc] run tag @s add is_targetting_npc
execute as @e[type=#illager_friends, tag=!is_targetting_npc] run tag @s add is_targetting_npc

# If you can't find any NPC in a 25-block-radius, remove the tag as you're obviously not targetting an NPC anymore
execute as @e[tag=is_targetting_npc] at @s unless entity @n[type=cobblemon:npc, distance=..25] run tag @s remove is_targetting_npc

schedule function fiercecomp:entity_sys/pillager/target_npcs 3s