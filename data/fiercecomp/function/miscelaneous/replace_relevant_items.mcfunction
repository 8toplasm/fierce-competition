clear @s[tag=awaiting_vouch_scripture_replace] compass[custom_name="{\"italic\":false,\"text\":\"Golden Scripture\"}",lore=["{\"italic\":false,\"text\":\"Rule: Toggle Voucher UI\"}"],custom_model_data=7030007,custom_data={pseudo_edible:1b}] 1
give @s[tag=awaiting_vouch_scripture_replace] compass[custom_name="{\"italic\":false,\"text\":\"Golden Scripture\"}",lore=["{\"italic\":false,\"text\":\"Rule: Toggle Voucher UI\"}"],custom_model_data=7030007,custom_data={edible:1b},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:999999999}] 1
tag @s remove awaiting_vouch_scripture_replace

advancement revoke @s only fiercecomp:item_craft/inventory_changed