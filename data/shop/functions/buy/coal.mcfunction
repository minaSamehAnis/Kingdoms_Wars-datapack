# Buy coal for 50 coins
execute if score @s money matches 50.. run give @s coal 1
execute if score @s money matches 50.. run scoreboard players remove @s money 50
execute if score @s money matches 50.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"✔️ You bought ","color":"green"},{"text":"1x ⛏️ Coal","color":"dark_gray","bold":true},{"text":" for ","color":"green"},{"text":"50 💰","color":"gold","bold":true}]
execute if score @s money matches 50.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

execute unless score @s money matches 50.. run tellraw @s [{"text":"[Shop] ","color":"red","bold":true},{"text":"❌ Not enough money! Need: ","color":"red"},{"text":"50 💰","color":"gold","bold":true}]
execute unless score @s money matches 50.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5