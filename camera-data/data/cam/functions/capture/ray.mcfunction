scoreboard players add dist= cam.main 1

execute store success score block= cam.main if block ~ ~ ~ #cam:capture

execute if score block= cam.main matches 1 run scoreboard players set dist= cam.main 1024
execute if score dist= cam.main matches 1024.. run function cam:capture/block

execute if score dist= cam.main matches ..1023 positioned ^ ^ ^0.0625 run function cam:capture/ray