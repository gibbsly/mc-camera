#> @macros
# Inputs:
# top,bottom,side,face
# 0 - north
# 1 - south
# 2 - east
# 3 - west

# face= :
# 1 - top
# 2 - north
# 3 - south
# 4 - east 
# 5 - west 
# 6 - bottom
$execute if score face= cam.main matches 1 run function cam:capture/block/texture/$(top)
$execute if score face= cam.main matches 2 run function cam:capture/block/texture/$(side)
$execute if score face= cam.main matches 3 run function cam:capture/block/texture/$(side)
$execute if score face= cam.main matches 4 run function cam:capture/block/texture/$(front)
$execute if score face= cam.main matches 5 run function cam:capture/block/texture/$(side)
$execute if score face= cam.main matches 6 run function cam:capture/block/texture/$(bottom)