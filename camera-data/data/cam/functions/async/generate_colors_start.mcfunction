bossbar set cam:prog name "generating colors"

data modify storage cam:main image set value []
data modify storage cam:main line set value []
data modify storage cam:main color_cashe set value []
scoreboard players set cashed_colors= cam.main 0
execute store result storage cam:temp line int 1 run scoreboard players set line_char= cam.main 0
function cam:color/get_line_char with storage cam:temp {}

scoreboard players add cas= cam.main 1