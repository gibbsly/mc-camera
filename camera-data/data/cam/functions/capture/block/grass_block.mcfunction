execute if score face= cam.main matches 1 run function cam:capture/block/texture/grass_block_top

execute if score face= cam.main matches 2..5 run function cam:capture/block/texture/grass_block_side_overlay

execute if score u= cam.main matches 00 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[0]
execute if score u= cam.main matches 01 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[1]
execute if score u= cam.main matches 02 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[2]
execute if score u= cam.main matches 03 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[3]
execute if score u= cam.main matches 04 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[4]
execute if score u= cam.main matches 05 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[5]
execute if score u= cam.main matches 06 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[6]
execute if score u= cam.main matches 07 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[7]
execute if score u= cam.main matches 08 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[8]
execute if score u= cam.main matches 09 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[9]
execute if score u= cam.main matches 10 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[10]
execute if score u= cam.main matches 11 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[11]
execute if score u= cam.main matches 12 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[12]
execute if score u= cam.main matches 13 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[13]
execute if score u= cam.main matches 14 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[14]
execute if score u= cam.main matches 15 if data storage cam:temp uv[0] run data modify storage cam:main color set from storage cam:temp uv[15]

execute if score face= cam.main matches 2..5 if data storage cam:main color{r:0} run function cam:capture/block/texture/grass_block_side

execute if score face= cam.main matches 6 run function cam:capture/block/texture/dirt