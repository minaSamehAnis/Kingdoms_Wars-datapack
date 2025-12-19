# Update rank display for all players
# This shows rank badges next to player names

# Set owner rank display
execute as @a[scores={admin=2}] run team join owner @s

# Set admin rank display
execute as @a[scores={admin=1}] run team join admin @s

# Set player rank display (no admin)
execute as @a unless score @s admin matches 1.. run team join player @s

# Create teams if they don't exist
team add owner
team add admin
team add player

# Configure owner team
team modify owner prefix [{"text":"👑 ","color":"gold","bold":true}]
team modify owner color gold

# Configure admin team
team modify admin prefix [{"text":"⚡ ","color":"yellow","bold":true}]
team modify admin color yellow

# Configure player team (no prefix)
team modify player prefix [{"text":""}]
team modify player color white