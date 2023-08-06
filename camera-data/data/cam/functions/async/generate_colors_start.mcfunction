bossbar set cam:prog name "generating colors"

data modify storage cam:main image set value []
data modify storage cam:main line set value []
data modify storage cam:temp pixel_chars set from storage cam:main pixel_chars
data modify storage cam:temp pixel set from storage cam:temp pixel_chars[0]

scoreboard players add cas= cam.main 1