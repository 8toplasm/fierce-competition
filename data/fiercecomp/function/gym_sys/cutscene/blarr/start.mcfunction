advancement revoke @s only fiercecomp:item_use/loud_shell
execute at @s run execute unless block ~ ~-3 ~ reinforced_deepslate run return fail
execute if entity @a[scores={cutscene_logic=1}] run return run tellraw @s {"text":"Please wait until there is no players currently in a cutscene.","color":"red"}
item replace entity @s weapon.mainhand with air
scoreboard players set @s cutscene_logic 1

# Provide the dialogue in chat
tellraw @s[advancements={fiercecomp:won_leader/blarr=false}] ["",{"text":"<Blarr> RESPECTS ARE DUE BEFORE A CHALLENGE, OUTSIDER. LET THE STRONGEST AMONGST THE CREW WIN THE BATTLE"}]
tellraw @s[advancements={fiercecomp:won_leader/blarr=true}] ["",{"text":"<Blarr> CARE FOR A REMATCH, CHALLENGER? PREPARE FOR YER DOOM"}]
playsound entity.drowned.ambient_water block @s ~ ~ ~ 0.9 0.9
playsound entity.drowned.shoot ambient @s

# Create the cinematic black bars
title @s times 0 4.5s 0.5s
title @s title {"font":"fiercecomp:screen_modifiers","text":"\uE000\uF80F\uE001"}

# Create the armor stands
summon armor_stand ~ ~1 ~ {Marker:1b, CustomName:'"Player in cutscene..."', Invisible:1b, CustomNameVisible:1b, Tags:["player_position"]}
execute at @n[type=cobblemon:npc, name=Blarr] run summon minecraft:armor_stand ^ ^0.1 ^1.5 {Invisible:1b, attributes:[{id:"minecraft:generic.gravity",base:0}],Tags:["camera"],Invulnerable:1b}
rotate @n[type=cobblemon:npc, name=Blarr] facing entity @s
rotate @n[tag=camera] facing entity @n[type=cobblemon:npc, name=Blarr]

# Make the player spectate the camera
gamemode spectator @s
spectate @n[tag=camera]

# Finally, play the animationn required
runmolang "q.npc.play_animation('cutscene');" @s @n[type=cobblemon:npc, name=Blarr]

# Schedule the second part of the cutscene
schedule function fiercecomp:gym_sys/cutscene/blarr/end 4.5s