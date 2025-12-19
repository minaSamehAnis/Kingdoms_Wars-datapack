# Sell seeds for 5 coins (20% of 25)
execute store result score #has_item shop_click if entity @s[nbt={Inventory:[{id:"minecraft:wheat_seeds"}]}]

execute if score #has_item shop_click matches 1.. run clear @s wheat_seeds 1
execute if score #has_item shop_click matches 1.. run scoreboard players add @s money 5
execute if score #has_item shop_click matches 1.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"✔️ You sold ","color":"green"},{"text":"1x 🌾 Seeds","color":"dark_green","bold":true},{"text":" for ","color":"green"},{"text":"5 💰","color":"gold","bold":true}]
execute if score #has_item shop_click matches 1.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

execute unless score #has_item shop_click matches 1.. run tellraw @s [{"text":"[Shop] ","color":"red","bold":true},{"text":"❌ You don't have any ","color":"red"},{"text":"🌾 Seeds","color":"dark_green","bold":true},{"text":" to sell!","color":"red"}]
execute unless score #has_item shop_click matches 1.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5