scoreboard players add dist= cam.main 1

execute store success score block= cam.main if block ~ ~ ~ #cam:ignore

execute if score block= cam.main matches 0 run scoreboard players set dist= cam.main 500
execute if score dist= cam.main matches 500.. run function cam:capture/block

execute if score dist= cam.main matches ..499 positioned ^ ^ ^0.2 run function cam:capture/ray