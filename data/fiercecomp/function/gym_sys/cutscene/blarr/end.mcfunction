execute as @a[scores={cutscene_logic=1}] at @s run tp @s @n[tag=player_position, distance=..70]
execute as @a[scores={cutscene_logic=1}] run rotate @s facing entity @n[type=cobblemon:npc, name=Blarr]
execute as @a[scores={cutscene_logic=1}] run gamemode survival
runmolang "q.npc.start_battle(q.player);" @p @n[type=cobblemon:npc, name=Blarr]
execute as @a[scores={cutscene_logic=1}] run kill @e[type=armor_stand, limit=2, sort=nearest]
schedule function fiercecomp:gym_sys/cutscene/reset 2s