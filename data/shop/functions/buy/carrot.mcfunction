# Buy carrot for 100 coins
execute if score @s money matches 100.. run give @s carrot 1
execute if score @s money matches 100.. run scoreboard players remove @s money 100
execute if score @s money matches 100.. run tellraw @s [{"text":"[Shop] ","color":"gold","bold":true},{"text":"✔️ You bought ","color":"green"},{"text":"1x 🥕 Carrot","color":"yellow","bold":true},{"text":" for ","color":"green"},{"text":"100 💰","color":"gold","bold":true}]
execute if score @s money matches 100.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

execute unless score @s money matches 100.. run tellraw @s [{"text":"[Shop] ","color":"red","bold":true},{"text":"❌ Not enough money! Need: ","color":"red"},{"text":"100 💰","color":"gold","bold":true}]
execute unless score @s money matches 100.. run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5