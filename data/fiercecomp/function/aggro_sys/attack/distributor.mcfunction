# Used to avoid too many entity calls & .mcfunction files
execute as @e[type=cobblemon:pokemon, tag=is_aggro, name="Bouffalant", limit=3, sort=random] at @s run function fiercecomp:aggro_sys/attack/common {hitbox_size:6, damage:7}
execute as @e[type=cobblemon:pokemon, tag=is_aggro, name="Meowth", limit=5, sort=random] at @s run function fiercecomp:aggro_sys/attack/common {hitbox_size:3, damage:4}
execute as @e[type=cobblemon:pokemon, tag=is_aggro, name="Perrserker", limit=5, sort=random] at @s run function fiercecomp:aggro_sys/attack/common {hitbox_size:3, damage:5}