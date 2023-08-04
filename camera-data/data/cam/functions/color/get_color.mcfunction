# 0-255
function cam:color/get_hex_char with storage cam:main color
function cam:color/concat_hex with storage cam:temp {}

data modify storage cam:main line append from storage cam:temp rgb

data modify storage cam:main new_color set value {color:{},rgb:{},selected:1b}
data modify storage cam:main new_color.color set from storage cam:main color
data modify storage cam:main new_color.rgb set from storage cam:temp rgb
data modify storage cam:main color_cashe append from storage cam:main new_color
#execute if score feedback= cam.main matches 1 if score show_cashe= cam.main matches 1 run scoreboard players add cashed_colors= cam.main 1
#execute if score feedback= cam.main matches 1 if score show_cashe= cam.main matches 1 run bossbar set cam:prog name ["generating colors ",[{"nbt":"rgb","storage":"cam:temp","interpret":true},"█"]," (",{"score":{"name":"cashed_colors=","objective":"cam.main"}},")"]