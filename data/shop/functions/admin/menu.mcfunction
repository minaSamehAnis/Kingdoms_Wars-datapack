# Admin menu - only accessible by admins
execute unless score @s admin matches 1.. run tellraw @s [{"text":"[Shop] ","color":"red","bold":true},{"text":"❌ You don't have admin permissions!","color":"red"}]
execute unless score @s admin matches 1.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5
execute unless score @s admin matches 1.. run scoreboard players set @s admin_menu 0
execute unless score @s admin matches 1.. run return 0

# Show admin menu
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
tellraw @s [{"text":"========================================","color":"dark_red"}]
tellraw @s [{"text":"         👑 ADMIN PANEL 👑","color":"red","bold":true}]
tellraw @s [{"text":"========================================","color":"dark_red"}]
tellraw @s [{"text":""}]

# Show admin level
execute if score @s admin matches 2 run tellraw @s [{"text":"🔥 Your Rank: ","color":"gray"},{"text":"OWNER","color":"gold","bold":true}]
execute if score @s admin matches 1 run tellraw @s [{"text":"⚡ Your Rank: ","color":"gray"},{"text":"ADMIN","color":"yellow","bold":true}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"========================================","color":"dark_red"}]
tellraw @s [{"text":""}]

# Money management
tellraw @s [{"text":"💰 Money Management:","color":"yellow","bold":true}]
tellraw @s [{"text":"  • Give player money:","color":"gray"}]
tellraw @s [{"text":"    /scoreboard players add <player> money <amount>","color":"green"}]
tellraw @s [{"text":"  • Remove player money:","color":"gray"}]
tellraw @s [{"text":"    /scoreboard players remove <player> money <amount>","color":"green"}]
tellraw @s [{"text":"  • Set player money:","color":"gray"}]
tellraw @s [{"text":"    /scoreboard players set <player> money <amount>","color":"green"}]
tellraw @s [{"text":""}]

# Owner-only features
execute if score @s admin matches 2 run tellraw @s [{"text":"👑 Owner Commands:","color":"gold","bold":true}]
execute if score @s admin matches 2 run tellraw @s [{"text":"  • Add admin:","color":"gray"}]
execute if score @s admin matches 2 run tellraw @s [{"text":"    /scoreboard players set <player> admin 1","color":"red"}]
execute if score @s admin matches 2 run tellraw @s [{"text":"  • Remove admin:","color":"gray"}]
execute if score @s admin matches 2 run tellraw @s [{"text":"    /scoreboard players set <player> admin 0","color":"red"}]
execute if score @s admin matches 2 run tellraw @s [{"text":"  • List all admins:","color":"gray"}]
execute if score @s admin matches 2 run tellraw @s [{"text":"    /scoreboard players list admin","color":"red"}]
execute if score @s admin matches 2 run tellraw @s [{"text":""}]

tellraw @s [{"text":"========================================","color":"dark_red"}]
tellraw @s [{"text":"  📋 Quick Actions:","color":"aqua","bold":true}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"  [➕ Give Me 100 Coins]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function shop:util/give_money"},"hoverEvent":{"action":"show_text","contents":"Add 100 coins to yourself"}}]
tellraw @s [{"text":"  [🔄 Reset My Money]","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function shop:util/reset"},"hoverEvent":{"action":"show_text","contents":"Reset to 500 coins"}}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"========================================","color":"dark_red"}]

playsound block.note_block.pling master @s ~ ~ ~ 1 0.8
scoreboard players set @s admin_menu 0
scoreboard players enable @s admin_menu