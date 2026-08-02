team join trainers_vouch @e[type=wandering_trader, tag=drowned_trader, team=!trainers_vouch]
team join trainers_vouch @e[type=#fiercecomp:trainers_vouch_eligible, team=!trainers_vouch]
team join trainers_vouch @a[scores={voucher_level=2..3}, tag=!has_hit_mob]

schedule function fiercecomp:gym_sys/vouch/effect_logic 3s