bossbar set cam:prog name "resolving image"
execute in cam:resolve run setblock 0 1 0 minecraft:oak_sign
function cam:resolve/sign_raw
#execute store result bossbar cam:prog value run scoreboard players add total= cam.main 10
scoreboard players set tick_done= cam.main 1
scoreboard players add cas= cam.main 1
tellraw @a "data resolved"