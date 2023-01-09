bossbar set cam:prog name "capturing image"

#storage setup
data modify storage cam:main colors set value []

#capturing
scoreboard players set total= cam.main 0
scoreboard players set lines= cam.main 0
scoreboard players set rays= cam.main 0
scoreboard players set pface= cam.main -1
scoreboard players set pwface= cam.main -1
data modify storage cam:main line set value []

scoreboard players set tick_done= cam.main 1
scoreboard players add cas= cam.main 1