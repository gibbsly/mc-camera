#setting up fov
execute if score fov= cam.main matches ..-1 run scoreboard players set fov= cam.main 0
execute if score fov= cam.main matches 181.. run scoreboard players set fov= cam.main 180
execute store result storage cam:temp fov int 1 run scoreboard players get fov= cam.main
function cam:capture/get_fov with storage cam:temp {}
function cam:capture/place_plane with storage cam:temp {}

#storage setup
data modify storage cam:main colors set value []

#capturing
scoreboard players set total= cam.main 0
scoreboard players set lines= cam.main 0
function cam:capture/all