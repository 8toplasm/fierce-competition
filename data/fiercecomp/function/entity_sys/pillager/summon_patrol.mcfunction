execute as @s store result score @s patrol_logic run random value 1..100
execute store result score .current_delay patrol_logic run scoreboard players get .spawn_delay patrol_logic

# Check for anti-conditions
execute unless score @s patrol_logic <= .frequency patrol_logic run return fail
execute unless block ~32 ~ ~-32 air run return fail

playsound item.goat_horn.sound.2

summon armor_stand ~32 ~ ~-32 {Marker:1b,Invisible:1b,Tags:["illager_seat"],Passengers:[{id:"minecraft:vindicator",PatrolLeader:1b,HandItems:[{id:"minecraft:stone_axe",count:1},{}],HandDropChances:[0.000F,0.085F]}]}
summon pillager ~34 ~ ~-30 {Patrolling:1b,HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:damage":0.45,"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}},{}]}
summon pillager ~34 ~ ~-32 {Patrolling:1b,HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:damage":0.45,"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}},{}]}
summon pillager ~32 ~ ~-34 {Patrolling:1b,HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:damage":0.45,"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}},{}]}
summon pillager ~30 ~ ~-34 {Patrolling:1b,HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:damage":0.45,"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}},{}]}

pokespawnat ~32 ~ ~-32 bouffalant level=25 uncatchable=yes originaltrainer=Pillager originaltrainertype=NPC
pokespawnat ~32 ~ ~-32 perrserker level=21 uncatchable=yes originaltrainer=Pillager originaltrainertype=NPC
pokespawnat ~32 ~ ~-32 meowth level=17 uncatchable=yes originaltrainer=Pillager originaltrainertype=NPC galarian=true
pokespawnat ~32 ~ ~-32 meowth level=17 uncatchable=yes originaltrainer=Pillager originaltrainertype=NPC galarian=true

tag @e[type=cobblemon:pokemon, name="Bouffalant", tag=!is_aggro, limit=3, sort=nearest] add is_aggro
tag @e[type=cobblemon:pokemon, distance=25.., tag=is_aggro] add illager_seat
tag @n[type=cobblemon:pokemon, distance=25.., name="Perrserker"] add is_aggro
tag @e[type=cobblemon:pokemon, distance=20.., name="Meowth", limit=2] add is_aggro