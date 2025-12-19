# Buy seeds for 25 coins
execute if score @s money matches 25.. run give @s wheat_seeds 1
execute if score @s money matches 25.. run scoreboard players remove @s money 25
execute if score @s money matches 25.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"✔️ You bought ","color":"green"},{"text":"1x 🌾 Seeds","color":"dark_green","bold":true},{"text":" for ","color":"green"},{"text":"25 💰","color":"gold","bold":true}]
execute if score @s money matches 25.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

execute unless score @s money matches 25.. run tellraw @s [{"text":"[Shop] ","color":"red","bold":true},{"text":"❌ Not enough money! Need: ","color":"red"},{"text":"25 💰","color":"gold","bold":true}]
execute unless score @s money matches 25.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5