# Makes it so that pillagers in bouffalants don't float anymore
execute as @e[type=armor_stand, tag=illager_seat] at @s unless entity @e[tag=illager_seat, tag=is_aggro, type=cobblemon:pokemon, distance=..5] run kill @s

# Sends Drowned that have been marked as trader spawnpoints into the void to ensure no loot/particles are visible
tp @e[tag=cleanup] ~ ~-512 ~

advancement revoke @a only fiercecomp:item_use/scripture
schedule function fiercecomp:looping/loop_3s 3s