data remove storage cam:temp uv

execute if block ~ ~ ~ #cam:a-m run function cam:capture/block/texture/a-m
execute if block ~ ~ ~ #cam:n-z run function cam:capture/block/texture/n-z

execute store result storage cam:temp u int 1 run scoreboard players get u= cam.main
function cam:capture/get_u with storage cam:temp

#execute if score u= cam.main matches 01 run data modify storage cam:main color set from storage cam:temp uv[1]
#execute if score u= cam.main matches 02 run data modify storage cam:main color set from storage cam:temp uv[2]
#execute if score u= cam.main matches 03 run data modify storage cam:main color set from storage cam:temp uv[3]
#execute if score u= cam.main matches 04 run data modify storage cam:main color set from storage cam:temp uv[4]
#execute if score u= cam.main matches 05 run data modify storage cam:main color set from storage cam:temp uv[5]
#execute if score u= cam.main matches 06 run data modify storage cam:main color set from storage cam:temp uv[6]
#execute if score u= cam.main matches 07 run data modify storage cam:main color set from storage cam:temp uv[7]
#execute if score u= cam.main matches 08 run data modify storage cam:main color set from storage cam:temp uv[8]
#execute if score u= cam.main matches 09 run data modify storage cam:main color set from storage cam:temp uv[9]
#execute if score u= cam.main matches 10 run data modify storage cam:main color set from storage cam:temp uv[10]
#execute if score u= cam.main matches 11 run data modify storage cam:main color set from storage cam:temp uv[11]
#execute if score u= cam.main matches 12 run data modify storage cam:main color set from storage cam:temp uv[12]
#execute if score u= cam.main matches 13 run data modify storage cam:main color set from storage cam:temp uv[13]
#execute if score u= cam.main matches 14 run data modify storage cam:main color set from storage cam:temp uv[14]
#execute if score u= cam.main matches 15 run data modify storage cam:main color set from storage cam:temp uv[15]