scoreboard players add dist= cam.main 1

execute store success score block= cam.main if block ~ ~ ~ #cam:capture
execute if score water= cam.main matches 0 if block ~ ~ ~ water run function cam:capture/water_start

execute if score block= cam.main matches 1 run scoreboard players set dist= cam.main 2048
execute if score dist= cam.main matches 2048.. run function cam:capture/block

execute if score dist= cam.main matches ..2047 positioned ^ ^ ^0.0625 run function cam:capture/ray