#setting up fov
execute store result storage cam:temp fov double -0.01 run scoreboard players get fov= cam.main
data modify storage cam:temp fov set string storage cam:temp fov 0 -1
function cam:capture/place_plane with storage cam:temp {}

#(last coordinate determines fov - 75 was old)

#storage setup
data modify storage cam:main colors set value []

#capturing
scoreboard players set total= cam.main 0
scoreboard players set lines= cam.main 0
function cam:capture/all