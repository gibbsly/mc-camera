execute in cam:resolve run data modify storage cam:main out set from block 0 1 0 front_text.messages[0]
execute in cam:resolve run setblock 0 1 0 minecraft:air

bossbar set cam:prog players
execute store result bossbar cam:prog value run scoreboard players set total= cam.main 0


#killing entities
kill 0-0-0-0-63616D
kill 0-0-0-0-63616E
kill 0-0-0-0-63616F

scoreboard players set tick_done= cam.main 1
scoreboard players set cas= cam.main 0

tellraw @a "done"