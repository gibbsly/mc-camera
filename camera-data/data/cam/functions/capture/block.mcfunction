execute positioned ^ ^ ^-0.2 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

execute store success score block= cam.main unless block ~ ~ ~ #cam:ignore

execute if score block= cam.main matches 1 run data modify storage cam:main line append value ['{"text":"","color":"#000000"}']
execute if score block= cam.main matches 0 run data modify storage cam:main line append value ['{"text":"","color":"#ffffff"}']