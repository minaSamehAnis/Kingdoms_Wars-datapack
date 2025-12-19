# Sell carrot for 20 coins (20% of 100)
execute store result score #has_item shop_click if entity @s[nbt={Inventory:[{id:"minecraft:carrot"}]}]

execute if score #has_item shop_click matches 1.. run clear @s carrot 1
execute if score #has_item shop_click matches 1.. run scoreboard players add @s money 20
execute if score #has_item shop_click matches 1.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"✔️ You sold ","color":"green"},{"text":"1x 🥕 Carrot","color":"yellow","bold":true},{"text":" for ","color":"green"},{"text":"20 💰","color":"gold","bold":true}]
execute if score #has_item shop_click matches 1.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

execute unless score #has_item shop_click matches 1.. run tellraw @s [{"text":"[Shop] ","color":"red","bold":true},{"text":"❌ You don't have any ","color":"red"},{"text":"🥕 Carrots","color":"yellow","bold":true},{"text":" to sell!","color":"red"}]
execute unless score #has_item shop_click matches 1.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5