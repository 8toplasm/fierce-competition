execute if score .global_vouch gamerules matches 0 if score .output_to_chat gamerules matches 1 run return run tellraw @s {"text":"Voucher UIs are disabled globally by the server owner","color":"red"}
execute if score .global_vouch gamerules matches 0 if score .output_to_chat gamerules matches 0 run return fail

# temp_vouch is used to avoid overriding the vouch in the next line. if it wasn't for that extra step you'd be adding and then immediately removing the tag
execute as @s[tag=!local_vouch_disabled] run tag @s add temp_vouch
execute as @s[tag=local_vouch_disabled] run tag @s remove local_vouch_disabled

execute as @s[tag=temp_vouch] run tag @s add local_vouch_disabled
execute as @s[tag=temp_vouch] run tag @s remove temp_vouch

playsound ui.cartography_table.take_result ambient @s
