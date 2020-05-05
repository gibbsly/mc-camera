execute store result bossbar cam:prog value run scoreboard players set total= cam.main 0
bossbar set cam:prog players @a

function cam:capture_data

setblock 0 1 0 minecraft:oak_sign
function cam:add_pixel
function cam:resolve_data

data modify storage cam:main out set from block 0 1 0 Text1
setblock 0 1 0 minecraft:air
#data modify block 0 1 0 Text1 set value '[{"text":",","font":"cam:main"},{"nbt":"out","storage":"cam:main","interpret":true}]'

bossbar set cam:prog players
execute store result bossbar cam:prog value run scoreboard players set total= cam.main 0