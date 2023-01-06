execute in cam:resolve run forceload add 0 0 
execute in cam:resolve run setblock 0 0 0 stone
scoreboard objectives add cam.main dummy
scoreboard players set #-1 cam.main -1
scoreboard players set #4 cam.main 4
scoreboard players set #16 cam.main 16
scoreboard players set #64 cam.main 64
bossbar add cam:prog ""
bossbar set cam:prog max 20592