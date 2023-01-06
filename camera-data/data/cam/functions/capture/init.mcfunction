#moving plane entity
execute rotated as 0-0-0-0-63616D positioned as 0-0-0-0-63616D run tp 0-0-0-0-63616E ^-0.495 ^-0.495 ^-0.5

#(last coordinate determines fov - 75 was old)

#storage setup
data modify storage cam:main colors set value []

#capturing
scoreboard players set total= cam.main 0
scoreboard players set lines= cam.main 0
function cam:capture/all