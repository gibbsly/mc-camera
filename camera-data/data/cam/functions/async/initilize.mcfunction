execute store result bossbar cam:prog value run scoreboard players set total= cam.main 0
bossbar set cam:prog name ""
bossbar set cam:prog players @a
tellraw @a "initialized"

scoreboard players add cas= cam.main 1
scoreboard players set tick_done= cam.main 1