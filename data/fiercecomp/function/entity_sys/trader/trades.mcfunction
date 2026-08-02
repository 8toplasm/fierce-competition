# Wandering Traders use this
data modify entity @s[tag=!drowned_trader] Offers.Recipes append value {buy:{id:emerald, count:2}, sell:{id:goat_horn, count:1, components:{"instrument":"yearn_goat_horn", "custom_name":"{\"text\":\"Loud Horn\", \"italic\":false}","custom_model_data":7030001}}, maxUses:5}

# Drowned Traders use these
data modify entity @s[tag=drowned_trader, tag=!trustworthy] Offers.Recipes append value {buy:{id:emerald, count:2}, sell:{id:goat_horn, count:1, components:{"instrument":"feel_goat_horn", "custom_name":"{\"text\":\"Loud Shell\", \"italic\":false}","custom_model_data":7030002}, "minecraft:lore":['{"italic":false,"text":"Scummy"}']}, maxUses:3}
data modify entity @s[tag=drowned_trader, tag=trustworthy] Offers.Recipes append value {buy:{id:emerald, count:5}, sell:{id:goat_horn, count:1, components:{"instrument":"feel_goat_horn", "custom_name":"{\"text\":\"Loud Shell\", \"italic\":false}","custom_model_data":7030002}, "minecraft:lore":['{"italic":false,"text":"Polished"}']}, maxUses:3}

# Prevents spam-adding trades
tag @s add has_trade
