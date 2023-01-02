execute positioned ^ ^ ^-0.2 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

execute store success score block= cam.main if block ~ ~ ~ #cam:capture

execute if score block= cam.main matches 0 if predicate cam:overworld run data modify storage cam:main line append value ['{"text":"","color":"#78A7FF"}']
execute if score block= cam.main matches 0 if predicate cam:the_nether run data modify storage cam:main line append value ['{"text":"","color":"#68150D"}']
execute if score block= cam.main matches 0 if predicate cam:the_end run data modify storage cam:main line append value ['{"text":"","color":"#000000"}']

execute if score block= cam.main matches 1 run function cam:capture/get_texture