# 1. Check if the player has the item using custom_data component
execute store result score #has_item temp if entity @s[items={minecraft:carrot_on_a_stick={custom_data:{shop_menu:1b}}}]

# 2. Give the item if missing (formatted to satisfy Spyglass parser)
execute if score #has_item temp matches 0 run give @s minecraft:carrot_on_a_stick[custom_data={shop_menu:1b},custom_model_data=1,item_name='{"text":"🏪 Shop Menu","color":"gold","bold":true,"italic":false}',lore=['{"text":"Right click to open shop","color":"gray","italic":false}','{"text":""}','{"text":"💰 Buy & Sell Items","color":"yellow","italic":false}','{"text":""}','{"text":"Lost this item? Just type:","color":"dark_gray","italic":false}','{"text":"/shop","color":"green","italic":false}'],hide_additional_tooltip={}] 1

# 3. Success Feedback
execute if score #has_item temp matches 0 run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"✔️ Shop item restored!","color":"green"}]
execute if score #has_item temp matches 0 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

# 4. Already Owned Feedback
execute if score #has_item temp matches 1.. run tellraw @s [{"text":"[Shop] ","color":"yellow","bold":true},{"text":"⚠️ You already have the shop item!","color":"yellow"}]
execute if score #has_item temp matches 1.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.8

# 5. Reset and re-enable trigger
scoreboard players set @s get_shop_item 0
scoreboard players enable @s get_shop_item