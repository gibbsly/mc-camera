#> @macros
# Inputs:
# top,north,south,east,west,bottom
# face= :
# 1 - top
# 2 - north
# 3 - south
# 4 - west 
# 5 - east
# 6 - bottom
$execute if score face= cam.main matches 1 run function cam:capture/block/texture/$(top)
$execute if score face= cam.main matches 2 run function cam:capture/block/texture/$(north)
$execute if score face= cam.main matches 3 run function cam:capture/block/texture/$(south)
$execute if score face= cam.main matches 4 run function cam:capture/block/texture/$(west)
$execute if score face= cam.main matches 5 run function cam:capture/block/texture/$(east)
$execute if score face= cam.main matches 6 run function cam:capture/block/texture/$(bottom)