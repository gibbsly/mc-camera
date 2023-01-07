execute store success score block= cam.main if block ~ ~ ~ #cam:capture

execute if score block= cam.main matches 0 run particle flame ~ ~ ~ 0 0 0 0 1 force
execute if score block= cam.main matches 1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute if score block= cam.main matches 0 if predicate cam:overworld run data modify storage cam:main line append value {r:120,g:167,b:255}
execute if score block= cam.main matches 0 if predicate cam:the_nether run data modify storage cam:main line append value {r:104,g:21,b:13}
execute if score block= cam.main matches 0 if predicate cam:the_end run data modify storage cam:main line append value {r:0,g:0,b:0}

execute if score block= cam.main matches 1 run function cam:capture/get_texture