# Create scoreboards
scoreboard objectives add money dummy "§6§l💰 YOUR MONEY"
scoreboard objectives add shop_click used:carrot_on_a_stick
scoreboard objectives add shop_interact minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add temp dummy
scoreboard objectives add get_shop_item trigger
scoreboard objectives add shop trigger
scoreboard objectives add help trigger
scoreboard objectives add admin dummy
scoreboard objectives add admin_menu trigger

# Create rank display objective (shown as prefix next to name)
scoreboard objectives add rank dummy
scoreboard objectives setdisplay belowName rank

# Display money on sidebar (right side of screen)
scoreboard objectives setdisplay sidebar money

# Create dummy entries for sidebar decoration
scoreboard players set "§e§m           " money 999999
scoreboard players set "§7Balance:" money 999998
scoreboard players set "§e§m           " money -1

# Set owner (MinaSameh12) as main admin
scoreboard players set MinaSameh12 admin 2

# Welcome message
tellraw @a [{"text":"\n========================================","color":"gold"},"\n",{"text":"      🏪 SHOP SYSTEM LOADED 🏪","color":"yellow","bold":true},"\n",{"text":"========================================","color":"gold"},"\n",{"text":"✨ ","color":"yellow"},{"text":"Simple Commands:","color":"white","bold":true},"\n",{"text":"   • ","color":"gray"},{"text":"/shop","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger shop"},"hoverEvent":{"action":"show_text","contents":"Click to open shop!"}},{"text":" - Open the shop","color":"gray"},"\n",{"text":"   • ","color":"gray"},{"text":"/help","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger help"},"hoverEvent":{"action":"show_text","contents":"Click for help!"}},{"text":" - Show all commands","color":"gray"},"\n",{"text":"   • Or use the shop item!","color":"gray"},"\n",{"text":"========================================","color":"gold"},"\n"]

# Owner message
tellraw MinaSameh12 [{"text":"[Shop] ","color":"dark_red","bold":true},{"text":"You are the ","color":"gray"},{"text":"OWNER","color":"gold","bold":true},{"text":"! Type ","color":"gray"},{"text":"/trigger admin_menu","color":"red","bold":true},{"text":" to manage admins.","color":"gray"}]

say §a[Shop] §7Datapack loaded! Type §e/shop §7to begin!