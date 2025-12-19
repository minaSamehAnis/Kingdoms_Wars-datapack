# Give new players starting money (500 coins)
execute as @a unless score @s money matches 0.. run scoreboard players set @s money 500
execute as @a unless score @s money matches 0.. run give @s carrot_on_a_stick{display:{Name:'[{"text":"🏪 Shop Menu","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"Right click to open shop","italic":false,"color":"gray"}]','[{"text":""}]','[{"text":"💰 Buy & Sell Items","italic":false,"color":"yellow"}]','[{"text":""}]','[{"text":"Lost this item? Just type:","italic":false,"color":"dark_gray"}]','[{"text":"/shop","italic":false,"color":"green"}]']},CustomModelData:1,shop_menu:1b,HideFlags:127} 1
execute as @a unless score @s money matches 0.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"Welcome! You started with ","color":"green"},{"text":"500 💰","color":"yellow","bold":true},{"text":" coins!","color":"green"}]
execute as @a unless score @s money matches 0.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"💡 Type ","color":"gray"},{"text":"/shop","color":"green","bold":true},{"text":" to open the shop anytime!","color":"gray"}]
execute as @a unless score @s money matches 0.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1

# Detect shop item click
execute as @a[scores={shop_click=1..},nbt={SelectedItem:{tag:{shop_menu:1b}}}] at @s run function shop:shop_menu
scoreboard players set @a shop_click 0

# Enable all triggers
scoreboard players enable @a shop_menu
scoreboard players enable @a buy_menu
scoreboard players enable @a sell_menu
scoreboard players enable @a get_shop_item
scoreboard players enable @a shop
scoreboard players enable @a help
scoreboard players enable @a[scores={admin=1..}] admin_menu

# Detect triggers and run functions
execute as @a[scores={get_shop_item=1..}] run function shop:get_shop_item
execute as @a[scores={shop=1..}] run function shop:shop_menu
execute as @a[scores={shop=1..}] run scoreboard players set @s shop 0
execute as @a[scores={help=1..}] run function shop:help
execute as @a[scores={admin_menu=1..}] run function shop:admin/menu

# Update rank display for all players
function shop:update_ranks

# Update sidebar display continuously
function shop:update_sidebar