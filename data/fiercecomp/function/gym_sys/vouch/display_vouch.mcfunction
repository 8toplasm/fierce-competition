# Display the vouch to everyone who has the voucher enabled as long as they aren't standing in any gym
execute as @a[tag=!local_vouch_disabled] at @s unless block ~ ~-3 ~ reinforced_deepslate run title @s actionbar {"score":{"name":"@s","objective":"voucher_level"}, "font":"fiercecomp:voucher"}

schedule function fiercecomp:gym_sys/vouch/display_vouch 2s