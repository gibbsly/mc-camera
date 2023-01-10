execute in cam:resolve run forceload add 0 0 
execute in cam:resolve run setblock 0 0 0 stone
scoreboard objectives add cam.main dummy
scoreboard players set #-1 cam.main -1
scoreboard players set #2 cam.main 2
scoreboard players set #4 cam.main 4
scoreboard players set #8 cam.main 8
scoreboard players set #16 cam.main 16
scoreboard players set #63 cam.main 63
scoreboard players set #64 cam.main 64
scoreboard players set #128 cam.main 128
bossbar add cam:prog ""
bossbar set cam:prog max 19612

scoreboard players set sg= cam.main 0
scoreboard players set feedback= cam.main 1
scoreboard players set show_cashe= cam.main 0
scoreboard players set particles= cam.main 1

gamerule maxCommandChainLength 2147483647