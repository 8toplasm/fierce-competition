# Used to avoid too many entity calls & .mcfunction files
execute as @e[type=cobblemon:pokemon, tag=is_aggro, name="Perrserker"] at @s run function fiercecomp:aggro_sys/target/common {target_speed:1, hitbox_size:3, damage:5}
execute as @e[type=cobblemon:pokemon, tag=is_aggro, name="Bouffalant"] at @s run function fiercecomp:aggro_sys/target/common {target_speed:0.8,  hitbox_size:6, damage:7}
execute as @e[type=cobblemon:pokemon, tag=is_aggro, name="Meowth"] at @s run function fiercecomp:aggro_sys/target/common {target_speed:1, hitbox_size:3, damage:4}
