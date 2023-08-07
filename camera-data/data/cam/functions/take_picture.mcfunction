worldborder set 6000000
worldborder set 5990000 100
execute store result bossbar cam:prog value run scoreboard players set total= cam.main 0
bossbar set cam:prog name ""
bossbar set cam:prog players @a
execute store result score time= cam.main run worldborder get
scoreboard players remove time= cam.main 6000000
scoreboard players operation time= cam.main *= #-1 cam.main
tellraw @a ["initialized ",{"score":{"name":"time=","objective":"cam.main"}}]
worldborder set 6000000
worldborder set 5990000 100

bossbar set cam:prog name "capturing image"
function cam:capture_data
execute store result score time= cam.main run worldborder get
scoreboard players remove time= cam.main 6000000
scoreboard players operation time= cam.main *= #-1 cam.main
tellraw @a ["data captured ",{"score":{"name":"time=","objective":"cam.main"}}]
worldborder set 6000000
worldborder set 5990000 100

bossbar set cam:prog name "generating colors"
function cam:generate_colors
execute store result score time= cam.main run worldborder get
scoreboard players remove time= cam.main 6000000
scoreboard players operation time= cam.main *= #-1 cam.main
tellraw @a ["colors generated ",{"score":{"name":"time=","objective":"cam.main"}}]
worldborder set 6000000
worldborder set 5990000 100

bossbar set cam:prog name "resolving image"
execute in cam:resolve run setblock 0 1 0 minecraft:oak_sign
function cam:resolve_data
execute store result score time= cam.main run worldborder get
scoreboard players remove time= cam.main 6000000
scoreboard players operation time= cam.main *= #-1 cam.main
tellraw @a ["data resolved ",{"score":{"name":"time=","objective":"cam.main"}}]

execute in cam:resolve run data modify storage cam:main out set from block 0 1 0 front_text.messages[0]
execute in cam:resolve run setblock 0 1 0 minecraft:air
#data modify block 0 1 0 Text1 set value '[{"text":",","font":"cam:main"},{"nbt":"out","storage":"cam:main","interpret":true}]'

bossbar set cam:prog players
execute store result bossbar cam:prog value run scoreboard players set total= cam.main 0