$execute if entity @n[predicate=fiercecomp:player_like, distance=0..$(hitbox_size)] run runmolang "q.pokemon.play_animation('physical');" @p @n @s
$execute if entity @n[predicate=fiercecomp:player_like, distance=0..$(hitbox_size)] run damage @n[predicate=fiercecomp:player_like, distance=0..$(hitbox_size)] $(damage) minecraft:mob_attack by @s
rotate @s facing entity @p