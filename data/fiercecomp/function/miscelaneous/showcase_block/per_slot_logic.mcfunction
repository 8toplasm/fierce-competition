execute unless data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:9b}] run data modify entity @n[type=chest_minecart] Items[{Slot:9b}].id set value "minecraft:barrier"
execute if data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:9b, id:"minecraft:barrier"}] run data modify entity @n[type=chest_minecart] Items[{Slot:9b}].components set value {"minecraft:hide_tooltip":{},"minecraft:hide_additional_tooltip":{},"minecraft:custom_model_data":7030004}

execute unless data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:11b}] run data modify entity @n[type=chest_minecart] Items[{Slot:11b}].id set value "minecraft:barrier"
execute if data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:11b, id:"minecraft:barrier"}] run data modify entity @n[type=chest_minecart] Items[{Slot:11b}].components set value {"minecraft:hide_tooltip":{},"minecraft:hide_additional_tooltip":{},"minecraft:custom_model_data":7030004}

execute unless data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:13b}] run data modify entity @n[type=chest_minecart] Items[{Slot:13b}].id set value "minecraft:barrier"
execute if data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:13b, id:"minecraft:barrier"}] run data modify entity @n[type=chest_minecart] Items[{Slot:13b}].components set value {"minecraft:hide_tooltip":{},"minecraft:hide_additional_tooltip":{},"minecraft:custom_model_data":7030004}

execute unless data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:15b}] run data modify entity @n[type=chest_minecart] Items[{Slot:15b}].id set value "minecraft:barrier"
execute if data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:15b, id:"minecraft:barrier"}] run data modify entity @n[type=chest_minecart] Items[{Slot:15b}].components set value {"minecraft:hide_tooltip":{},"minecraft:hide_additional_tooltip":{},"minecraft:custom_model_data":7030004}

execute unless data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:17b}] run data modify entity @n[type=chest_minecart] Items[{Slot:17b}].id set value "minecraft:barrier"
execute if data entity @n[type=chest_minecart, tag=showcase_block] Items[{Slot:17b, id:"minecraft:barrier"}] run data modify entity @n[type=chest_minecart] Items[{Slot:17b}].components set value {"minecraft:hide_tooltip":{},"minecraft:hide_additional_tooltip":{},"minecraft:custom_model_data":7030004}

execute at @s[predicate=!fiercecomp:has_slot, predicate=!fiercecomp:has_badge] run summon chest_minecart ~ ~ ~ {Tags:[cursor_item]}
item replace entity @n[type=chest_minecart, tag=cursor_item] container.0 from entity @s[predicate=!fiercecomp:has_slot, predicate=!fiercecomp:has_badge] player.cursor
kill @n[type=chest_minecart, tag=cursor_item]

item replace entity @s[predicate=!fiercecomp:has_badge] player.cursor with air