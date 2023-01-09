#capturing line
execute unless score rays= cam.main matches ..98 run scoreboard players set pface= cam.main -1
execute unless score rays= cam.main matches ..98 run scoreboard players set pwface= cam.main -1
execute unless score rays= cam.main matches ..98 run data modify storage cam:main line set value []
execute unless score rays= cam.main matches ..98 run scoreboard players set rays= cam.main 0

function cam:async/line

execute unless score rays= cam.main matches ..98 run data modify storage cam:main colors append from storage cam:main line

#loop
execute unless score rays= cam.main matches ..98 run scoreboard players add lines= cam.main 1
execute unless score rays= cam.main matches ..98 run execute rotated as 0-0-0-0-63616D positioned as 0-0-0-0-63616E run tp 0-0-0-0-63616E ^-0.99 ^0.01 ^

execute unless score rays= cam.main matches ..98 run function cam:async/capture_data