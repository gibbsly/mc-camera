execute store result score r= cam.main run data get storage cam:main color.r 10000
execute store result score g= cam.main run data get storage cam:main color.g 10000
execute store result score b= cam.main run data get storage cam:main color.b 10000

scoreboard players operation r= cam.main /= #16 cam.main 
scoreboard players operation g= cam.main /= #16 cam.main
scoreboard players operation b= cam.main /= #16 cam.main

# Red - 1-2 front digits - r1
scoreboard players operation o= cam.main = r= cam.main
execute store result storage cam:temp index int 0.0001 run scoreboard players get o= cam.main
data modify storage cam:temp output set value "r1"
function cam:color/get_hex_char with storage cam:temp {}

# Red last digits
scoreboard players operation o= cam.main = r= cam.main
scoreboard players operation o= cam.main %= #10000 cam.main
scoreboard players operation o= cam.main *= #16 cam.main
execute store result storage cam:temp index int 0.0001 run scoreboard players get o= cam.main
data modify storage cam:temp output set value "r2"
function cam:color/get_hex_char with storage cam:temp {}

# Green - 1-2 front digits - r1
scoreboard players operation o= cam.main = g= cam.main
execute store result storage cam:temp index int 0.0001 run scoreboard players get o= cam.main
data modify storage cam:temp output set value "g1"
function cam:color/get_hex_char with storage cam:temp {}

# Green last digits
scoreboard players operation o= cam.main = g= cam.main
scoreboard players operation o= cam.main %= #10000 cam.main
scoreboard players operation o= cam.main *= #16 cam.main
execute store result storage cam:temp index int 0.0001 run scoreboard players get o= cam.main
data modify storage cam:temp output set value "g2"
function cam:color/get_hex_char with storage cam:temp {}

# Blue - 1-2 front digits - r1
scoreboard players operation o= cam.main = b= cam.main
execute store result storage cam:temp index int 0.0001 run scoreboard players get o= cam.main
data modify storage cam:temp output set value "b1"
function cam:color/get_hex_char with storage cam:temp {}

# Blue last digits
scoreboard players operation o= cam.main = b= cam.main
scoreboard players operation o= cam.main %= #10000 cam.main
scoreboard players operation o= cam.main *= #16 cam.main
execute store result storage cam:temp index int 0.0001 run scoreboard players get o= cam.main
data modify storage cam:temp output set value "b2"
function cam:color/get_hex_char with storage cam:temp {}

function cam:color/concat_hex with storage cam:temp {}

data modify storage cam:main line append from storage cam:temp rgb

data modify storage cam:main new_color set value {color:{},rgb:{},selected:1b}
data modify storage cam:main new_color.color set from storage cam:main color
data modify storage cam:main new_color.rgb set from storage cam:temp rgb
data modify storage cam:main color_cashe append from storage cam:main new_color
#execute if score feedback= cam.main matches 1 if score show_cashe= cam.main matches 1 run scoreboard players add cashed_colors= cam.main 1
#execute if score feedback= cam.main matches 1 if score show_cashe= cam.main matches 1 run bossbar set cam:prog name ["generating colors ",[{"nbt":"rgb","storage":"cam:temp","interpret":true},"█"]," (",{"score":{"name":"cashed_colors=","objective":"cam.main"}},")"]