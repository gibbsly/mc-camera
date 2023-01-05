scoreboard players set water= cam.main 1


#getting pos in block as texture coordinates
tp 0-0-0-0-63616F ~ ~ ~ 
data modify storage cam:main pos set from entity 0-0-0-0-63616F Pos
execute store result score xpos= cam.main run data get storage cam:main pos[0] 16
execute store result score ypos= cam.main run data get storage cam:main pos[1] 16
execute store result score zpos= cam.main run data get storage cam:main pos[2] 16
scoreboard players operation xpos= cam.main %= #16 cam.main
scoreboard players operation ypos= cam.main %= #16 cam.main
scoreboard players operation zpos= cam.main %= #16 cam.main

#determining wface based on coordinate
scoreboard players set ft= cam.main 0
scoreboard players operation pwface= cam.main = wface= cam.main
##1 - top +y
execute if score ypos= cam.main matches 15.. run scoreboard players set wface= cam.main 1
execute if score ypos= cam.main matches 15.. run scoreboard players add ft= cam.main 1
##6 - bottom -y
execute if score ypos= cam.main matches ..0 run scoreboard players set wface= cam.main 6
execute if score ypos= cam.main matches ..0 run scoreboard players add ft= cam.main 1

##2 - north -z
execute if score zpos= cam.main matches ..0 run scoreboard players set wface= cam.main 2
execute if score zpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##3 - south +z
execute if score zpos= cam.main matches 15.. run scoreboard players set wface= cam.main 3
execute if score zpos= cam.main matches 15.. run scoreboard players add ft= cam.main 1

##4 - west -x
execute if score xpos= cam.main matches ..0 run scoreboard players set wface= cam.main 4
execute if score xpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##5 - east +x
execute if score xpos= cam.main matches 15.. run scoreboard players set wface= cam.main 5
execute if score xpos= cam.main matches 15.. run scoreboard players add ft= cam.main 1

##reverting to previous wface if wface is ambiguous 
execute unless score ft= cam.main matches 1 unless score pwface= cam.main matches -1 run scoreboard players operation wface= cam.main = pwface= cam.main

execute positioned ^ ^ ^-0.1 if predicate cam:light_00 run scoreboard players set water_light= cam.main 01
execute positioned ^ ^ ^-0.1 if predicate cam:light_01 run scoreboard players set water_light= cam.main 02
execute positioned ^ ^ ^-0.1 if predicate cam:light_02 run scoreboard players set water_light= cam.main 03
execute positioned ^ ^ ^-0.1 if predicate cam:light_03 run scoreboard players set water_light= cam.main 04
execute positioned ^ ^ ^-0.1 if predicate cam:light_04 run scoreboard players set water_light= cam.main 05
execute positioned ^ ^ ^-0.1 if predicate cam:light_05 run scoreboard players set water_light= cam.main 06
execute positioned ^ ^ ^-0.1 if predicate cam:light_06 run scoreboard players set water_light= cam.main 07
execute positioned ^ ^ ^-0.1 if predicate cam:light_07 run scoreboard players set water_light= cam.main 08
execute positioned ^ ^ ^-0.1 if predicate cam:light_08 run scoreboard players set water_light= cam.main 09
execute positioned ^ ^ ^-0.1 if predicate cam:light_09 run scoreboard players set water_light= cam.main 10
execute positioned ^ ^ ^-0.1 if predicate cam:light_10 run scoreboard players set water_light= cam.main 11
execute positioned ^ ^ ^-0.1 if predicate cam:light_11 run scoreboard players set water_light= cam.main 12
execute positioned ^ ^ ^-0.1 if predicate cam:light_12 run scoreboard players set water_light= cam.main 13
execute positioned ^ ^ ^-0.1 if predicate cam:light_13 run scoreboard players set water_light= cam.main 14
execute positioned ^ ^ ^-0.1 if predicate cam:light_14 run scoreboard players set water_light= cam.main 15
execute positioned ^ ^ ^-0.1 if predicate cam:light_15 run scoreboard players set water_light= cam.main 16

#setting color - add texture later
data modify storage cam:main water_color set value {r:63,g:118,b:228}

#water shading

scoreboard players set darken= cam.main 100
execute if score wface= cam.main matches 2..3 run scoreboard players set darken= cam.main 62
execute if score wface= cam.main matches 4..5 run scoreboard players set darken= cam.main 80
execute if score wface= cam.main matches 6 run scoreboard players set darken= cam.main 50
scoreboard players operation darken= cam.main *= water_light= cam.main
scoreboard players operation darken= cam.main /= #16 cam.main

execute store result score color= cam.main run data get storage cam:main water_color.r
execute store result storage cam:main water_color.r int 0.01 run scoreboard players operation color= cam.main *= darken= cam.main
execute store result score color= cam.main run data get storage cam:main water_color.g
execute store result storage cam:main water_color.g int 0.01 run scoreboard players operation color= cam.main *= darken= cam.main
execute store result score color= cam.main run data get storage cam:main water_color.b
execute store result storage cam:main water_color.b int 0.01 run scoreboard players operation color= cam.main *= darken= cam.main