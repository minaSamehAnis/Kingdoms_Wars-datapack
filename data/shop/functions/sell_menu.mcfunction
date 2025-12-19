# Sell menu
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","color":"white"}]
tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":"           💵 SELL MENU 💵","color":"red","bold":true}]
tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"💰 Your Money: ","color":"gray"},{"score":{"name":"@s","objective":"money"},"color":"yellow","bold":true},{"text":" coins","color":"yellow"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"⚠️ Sell price is 20% of buy price","color":"yellow","italic":true}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":""}]

# Carrot sell (20% of 100 = 20)
tellraw @s [{"text":"  🥕 Carrot ","color":"yellow","bold":true},{"text":"- ","color":"gray"},{"text":"20 💰","color":"gold","bold":true}]
tellraw @s [{"text":"    [SELL]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function shop:sell/carrot"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to sell 1x Carrot for 20 coins","color":"red"}]}}]
tellraw @s [{"text":""}]

# Coal sell (20% of 50 = 10)
tellraw @s [{"text":"  ⛏️ Coal ","color":"dark_gray","bold":true},{"text":"- ","color":"gray"},{"text":"10 💰","color":"gold","bold":true}]
tellraw @s [{"text":"    [SELL]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function shop:sell/coal"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to sell 1x Coal for 10 coins","color":"red"}]}}]
tellraw @s [{"text":""}]

# Seeds sell (20% of 25 = 5)
tellraw @s [{"text":"  🌾 Seeds ","color":"dark_green","bold":true},{"text":"- ","color":"gray"},{"text":"5 💰","color":"gold","bold":true}]
tellraw @s [{"text":"    [SELL]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function shop:sell/seeds"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to sell 1x Seeds for 5 coins","color":"red"}]}}]
tellraw @s [{"text":""}]

tellraw @s [{"text":"========================================","color":"gold"}]
tellraw @s [{"text":"  [⬅️ BACK]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger shop_menu"},"hoverEvent":{"action":"show_text","contents":"Back to main menu"}}]
tellraw @s [{"text":"========================================","color":"gold"}]

playsound block.note_block.pling master @s ~ ~ ~ 1 1.2
scoreboard players set @s sell_menu 0
scoreboard players enable @s sell_menu