execute store success score block= cam.main if block ~ ~ ~ #cam:capture

#execute if score feedback= cam.main matches 1 if score particles= cam.main matches 1 if score block= cam.main matches 0 run particle flame ~ ~ ~ 0 0 0 0 1 force
#execute if score feedback= cam.main matches 1 if score particles= cam.main matches 1 if score block= cam.main matches 1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute if score block= cam.main matches 0 run function cam:capture/get_sky
execute if score block= cam.main matches 1 run function cam:capture/get_texture

scoreboard players set captured= cam.main 1