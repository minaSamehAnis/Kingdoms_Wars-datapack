# Main shop menu with clickable buttons
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":"           🏪 SHOP MENU 🏪","color":"yellow","bold":true}]
tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"💰 Your Money: ","color":"gray"},{"score":{"name":"@s","objective":"money"},"color":"yellow","bold":true},{"text":" coins","color":"yellow"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":""}]

# Buy button
tellraw @s [{"text":"  [🛒 BUY ITEMS]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buy_menu"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see items for sale","color":"green"}]}}]
tellraw @s [{"text":"  Purchase items with your coins","color":"gray","italic":true}]
tellraw @s [{"text":""}]

# Sell button
tellraw @s [{"text":"  [💵 SELL ITEMS]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger sell_menu"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to sell your items","color":"red"}]}}]
tellraw @s [{"text":"  Sell items for 20% of buy price","color":"gray","italic":true}]
tellraw @s [{"text":""}]

# Get shop item button (if lost)
tellraw @s [{"text":"  [🔄 GET SHOP ITEM]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger get_shop_item"},"hoverEvent":{"action":"show_text","contents":[{"text":"Lost your shop item? Click here!","color":"aqua"}]}}]
tellraw @s [{"text":"  Restore your shop item if lost","color":"gray","italic":true}]
tellraw @s [{"text":""}]

tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":"  💡 Tip: Just type ","color":"gray"},{"text":"/shop","color":"green","bold":true},{"text":" to open this menu!","color":"gray"}]
tellraw @s [{"text":"========================================","color":"gold"}]

# Play sound
playsound block.note_block.pling master @s ~ ~ ~ 1 1

# Reset trigger
scoreboard players set @s shop_menu 0
scoreboard players enable @s shop_menu