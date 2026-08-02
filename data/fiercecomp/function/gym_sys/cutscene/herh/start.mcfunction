advancement revoke @s only fiercecomp:item_use/loud_horn
execute at @s run execute unless block ~ ~-3 ~ reinforced_deepslate run return fail
execute if entity @a[scores={cutscene_logic=1}] run return run tellraw @s {"text":"Please wait until there is no players currently in a cutscene.","color":"red"}
item replace entity @s weapon.mainhand with air
scoreboard players set @s cutscene_logic 1

# Provide the dialogue in chat
tellraw @s[advancements={fiercecomp:won_leader/herh=false}] ["",{"text":"<Herh> So be it, "},{"selector":"@s","color":"green"},{"text":"... show me your strength!"}]
tellraw @s[advancements={fiercecomp:won_leader/herh=true}] ["",{"text":"<Herh> Back for a rematch, "},{"selector":"@s","color":"green"},{"text":"? Let's do this!"}]
playsound entity.villager.no block @s ~ ~ ~ 1 0.7

# Create the cinematic black bars
title @s times 0 4.5s 0.5s
title @s title {"font":"fiercecomp:screen_modifiers","text":"\uE000\uF80F\uE001"}

# Create the armor stands
summon armor_stand ~ ~1 ~ {Marker:1b, CustomName:'"Player in cutscene..."', Invisible:1b, CustomNameVisible:1b, Tags:["player_position"]}
execute at @n[type=cobblemon:npc, name=Herh] run summon minecraft:armor_stand ^ ^0.1 ^1.5 {Invisible:1b, attributes:[{id:"minecraft:generic.gravity",base:0}],Tags:["camera"],Invulnerable:1b}
rotate @n[type=cobblemon:npc, name=Herh] facing entity @s
rotate @n[tag=camera] facing entity @n[type=cobblemon:npc, name=Herh]

# Make the player spectate the camera
gamemode spectator @s
spectate @n[tag=camera]

# Finally, play the animationn required
runmolang "q.npc.play_animation('cutscene');" @s @n[type=cobblemon:npc, name=Herh]

# Schedule the second part of the cutscene
schedule function fiercecomp:gym_sys/cutscene/herh/end 4.5s