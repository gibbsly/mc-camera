execute store result storage cam:temp line int 1 run scoreboard players add line_char= cam.main 1
function cam:color/get_line_char with storage cam:temp {}
data modify storage cam:main image append from storage cam:main line
data modify storage cam:main line set value []
data remove storage cam:main colors[0]