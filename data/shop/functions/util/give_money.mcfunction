# Admin command to give money
# Usage: /function shop:util/give_money
scoreboard players add @s money 100
tellraw @s [{"text":"[Admin] ","color":"dark_red","bold":true},{"text":"Added ","color":"gray"},{"text":"100 💰","color":"gold","bold":true},{"text":" to your balance!","color":"gray"}]
playsound entity.player.levelup master @s ~ ~ ~ 1 1.5