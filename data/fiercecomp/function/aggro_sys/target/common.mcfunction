particle minecraft:angry_villager ~ ~1.55 ~ 1 0 1 1 5
$pathto @s @n[predicate=fiercecomp:player_like, distance=1..15] $(target_speed)
$execute if entity @n[predicate=fiercecomp:player_like, distance=0..$(hitbox_size)] run damage @n[predicate=fiercecomp:player_like, distance=0..$(hitbox_size)] $(damage) minecraft:mob_attack by @s
$execute if entity @n[predicate=fiercecomp:player_like, distance=0..$(hitbox_size)] run runmolang "q.pokemon.play_animation('cry');" @p @n @s
schedule function fiercecomp:aggro_sys/attack/distributor 1s
schedule function fiercecomp:aggro_sys/target/distributor 3s