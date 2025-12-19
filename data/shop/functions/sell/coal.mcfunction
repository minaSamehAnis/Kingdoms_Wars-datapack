# Sell coal for 10 coins (20% of 50)
execute store result score #has_item shop_click if entity @s[nbt={Inventory:[{id:"minecraft:coal"}]}]

execute if score #has_item shop_click matches 1.. run clear @s coal 1
execute if score #has_item shop_click matches 1.. run scoreboard players add @s money 10
execute if score #has_item shop_click matches 1.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"✔️ You sold ","color":"green"},{"text":"1x ⛏️ Coal","color":"dark_gray","bold":true},{"text":" for ","color":"green"},{"text":"10 💰","color":"gold","bold":true}]
execute if score #has_item shop_click matches 1.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

execute unless score #has_item shop_click matches 1.. run tellraw @s [{"text":"[Shop] ","color":"red","bold":true},{"text":"❌ You don't have any ","color":"red"},{"text":"⛏️ Coal","color":"dark_gray","bold":true},{"text":" to sell!","color":"red"}]
execute unless score #has_item shop_click matches 1.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5