execute store result bossbar cam:prog value run scoreboard players set total= cam.main 0
bossbar set cam:prog name ""
bossbar set cam:prog players @a
tellraw @a "initialized"

bossbar set cam:prog name "loading colors"
data get storage rgb:rgb 1.1.1
tellraw @a "colors loaded"

scoreboard players add cas= cam.main 1
scoreboard players set tick_done= cam.main 1