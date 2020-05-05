#capturing line
scoreboard players set rays= cam.main 0
data modify storage cam:main line set value []

function cam:capture/line

data modify storage cam:main image append from storage cam:main line

#loop
scoreboard players add lines= cam.main 1
execute rotated as 0-0-0-0-63616D positioned as 0-0-0-0-63616E run tp 0-0-0-0-63616E ^-0.99 ^0.01 ^
execute if score lines= cam.main matches ..98 run function cam:capture/all