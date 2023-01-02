#getting pos in block as texture coordinates
tp 0-0-0-0-63616F ~ ~ ~ 
data modify storage cam:main pos set from entity 0-0-0-0-63616F Pos
execute store result score xpos= cam.main run data get storage cam:main pos[0] 16
execute store result score ypos= cam.main run data get storage cam:main pos[1] 16
execute store result score zpos= cam.main run data get storage cam:main pos[2] 16
scoreboard players operation xpos= cam.main %= #16 cam.main
scoreboard players operation ypos= cam.main %= #16 cam.main
scoreboard players operation zpos= cam.main %= #16 cam.main

#determining face based on coordinate
##1 - top +y
execute if score ypos= cam.main matches 14.. run scoreboard players set face= cam.main 1
##6 - bottom -y
execute if score ypos= cam.main matches ..1 run scoreboard players set face= cam.main 6

##2 - north -z
execute if score zpos= cam.main matches ..1 run scoreboard players set face= cam.main 2
##3 - south +z
execute if score zpos= cam.main matches 14.. run scoreboard players set face= cam.main 3

##4 - west -x
execute if score xpos= cam.main matches ..1 run scoreboard players set face= cam.main 4
##5 - east +x
execute if score xpos= cam.main matches 14.. run scoreboard players set face= cam.main 5

#running functions to get textures
data modify storage cam:main line append value ['{"text":"","color":"#FF00FF"}']
execute if block ~ ~ ~ #dirt run data modify storage cam:main line[-1] set value ['{"text":"","color":"#694931"}']
execute if block ~ ~ ~ grass_block if score ypos= cam.main matches 12.. run data modify storage cam:main line[-1] set value ['{"text":"","color":"#7CC342"}']
execute if block ~ ~ ~ #base_stone_overworld run data modify storage cam:main line[-1] set value ['{"text":"","color":"#747474"}']
execute if block ~ ~ ~ #logs run data modify storage cam:main line[-1] set value ['{"text":"","color":"#745A36"}']
execute if block ~ ~ ~ #leaves run data modify storage cam:main line[-1] set value ['{"text":"","color":"#1FBE02"}']
execute if block ~ ~ ~ gravel run data modify storage cam:main line[-1] set value ['{"text":"","color":"#726B69"}']
execute if block ~ ~ ~ sand run data modify storage cam:main line[-1] set value ['{"text":"","color":"#DCCFA3"}']
execute if block ~ ~ ~ water run data modify storage cam:main line[-1] set value ['{"text":"","color":"#3F76E4"}']
execute if block ~ ~ ~ lava run data modify storage cam:main line[-1] set value ['{"text":"","color":"#D75E12"}']