execute store result score rd= cam.main store result score hdd= cam.main run scoreboard players add dist= cam.main 1
scoreboard players operation hdd= cam.main %= #8 cam.main

execute store success score block= cam.main if block ~ ~ ~ #cam:capture
execute if score water= cam.main matches 0 if block ~ ~0.125 ~ water run function cam:capture/water_start
execute if score hdd= cam.main matches 0 if score water= cam.main matches 0 store result score nearby= cam.main if predicate cam:nearby
execute if score hdd= cam.main matches 0 if score water= cam.main matches 1 store result score nearby= cam.main if predicate cam:capture_nearby

execute if score block= cam.main matches 1 run scoreboard players set dist= cam.main 4096
execute if score dist= cam.main matches 4096.. if score captured= cam.main matches 0 run function cam:capture/block

execute if score nearby= cam.main matches 0 if score dist= cam.main matches ..4095 positioned ^ ^ ^0.0625 run function cam:capture/ray
execute if score nearby= cam.main matches 1 if score dist= cam.main matches ..4095 positioned ^ ^ ^0.0625 run function cam:capture/hd_ray