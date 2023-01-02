execute in cam:resolve run forceload add 0 0 
execute in cam:resolve unless block 0 0 0 jukebox run place template cam:rgb 0 0 0
scoreboard objectives add cam.main dummy
scoreboard players set #16 cam.main 16
bossbar add cam:prog ""
bossbar set cam:prog max 10791