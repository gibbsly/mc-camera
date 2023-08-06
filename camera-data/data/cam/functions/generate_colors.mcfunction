data modify storage cam:main image set value []
data modify storage cam:main line set value []
data modify storage cam:main color_cashe set value []
scoreboard players set cashed_colors= cam.main 0
data modify storage cam:temp pixel_chars set from storage cam:main pixel_chars
data modify storage cam:temp pixel set from storage cam:temp pixel_chars[0]

function cam:color/all