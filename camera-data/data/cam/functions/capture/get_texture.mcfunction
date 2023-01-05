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
scoreboard players operation pface= cam.main = face= cam.main
scoreboard players set ft= cam.main 0
##1 - top +y
execute if score ypos= cam.main matches 15.. run scoreboard players set face= cam.main 1
execute if score ypos= cam.main matches 15.. run scoreboard players add ft= cam.main 1
##6 - bottom -y
execute if score ypos= cam.main matches ..0 run scoreboard players set face= cam.main 6
execute if score ypos= cam.main matches ..0 run scoreboard players add ft= cam.main 1

##2 - north -z
execute if score zpos= cam.main matches ..0 run scoreboard players set face= cam.main 2
execute if score zpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##3 - south +z
execute if score zpos= cam.main matches 15.. run scoreboard players set face= cam.main 3
execute if score zpos= cam.main matches 15.. run scoreboard players add ft= cam.main 1

##4 - west -x
execute if score xpos= cam.main matches ..0 run scoreboard players set face= cam.main 4
execute if score xpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##5 - east +x
execute if score xpos= cam.main matches 15.. run scoreboard players set face= cam.main 5
execute if score xpos= cam.main matches 15.. run scoreboard players add ft= cam.main 1

##reverting to previous face if face is ambiguous 
execute unless score ft= cam.main matches 1 unless score pface= cam.main matches -1 run scoreboard players operation face= cam.main = pface= cam.main

#running functions to get colors
data modify storage cam:main color set value {r:255,g:0,b:255}
execute if block ~ ~ ~ #dirt run data modify storage cam:main color set value {r:105,g:73,b:49}
execute if block ~ ~ ~ grass_block if score ypos= cam.main matches 12.. run data modify storage cam:main color set value {r:124,g:195,b:66}
execute if block ~ ~ ~ #base_stone_overworld run data modify storage cam:main color set value {r:116,g:116,b:116}
execute if block ~ ~ ~ #logs run data modify storage cam:main color set value {r:116,g:90,b:54}
execute if block ~ ~ ~ #leaves run data modify storage cam:main color set value {r:31,g:190,b:2}
execute if block ~ ~ ~ gravel run data modify storage cam:main color set value {r:114,g:107,b:105}
execute if block ~ ~ ~ sand run data modify storage cam:main color set value {r:220,g:207,b:163}
execute if block ~ ~ ~ water run data modify storage cam:main color set value {r:63,g:118,b:228}
execute if block ~ ~ ~ lava run data modify storage cam:main color set value {r:215,g:94,b:18}

#running shading operations
##face brigtness
scoreboard players set darken= cam.main 100
execute if score face= cam.main matches 2..3 run scoreboard players set darken= cam.main 62
execute if score face= cam.main matches 4..5 run scoreboard players set darken= cam.main 80
execute if score face= cam.main matches 6 run scoreboard players set darken= cam.main 50
##getting block light
scoreboard players set light= cam.main 16
execute positioned ^ ^ ^-0.1 if predicate cam:light_00 run scoreboard players set light= cam.main 01
execute positioned ^ ^ ^-0.1 if predicate cam:light_01 run scoreboard players set light= cam.main 02
execute positioned ^ ^ ^-0.1 if predicate cam:light_02 run scoreboard players set light= cam.main 03
execute positioned ^ ^ ^-0.1 if predicate cam:light_03 run scoreboard players set light= cam.main 04
execute positioned ^ ^ ^-0.1 if predicate cam:light_04 run scoreboard players set light= cam.main 05
execute positioned ^ ^ ^-0.1 if predicate cam:light_05 run scoreboard players set light= cam.main 06
execute positioned ^ ^ ^-0.1 if predicate cam:light_06 run scoreboard players set light= cam.main 07
execute positioned ^ ^ ^-0.1 if predicate cam:light_07 run scoreboard players set light= cam.main 08
execute positioned ^ ^ ^-0.1 if predicate cam:light_08 run scoreboard players set light= cam.main 09
execute positioned ^ ^ ^-0.1 if predicate cam:light_09 run scoreboard players set light= cam.main 10
execute positioned ^ ^ ^-0.1 if predicate cam:light_10 run scoreboard players set light= cam.main 11
execute positioned ^ ^ ^-0.1 if predicate cam:light_11 run scoreboard players set light= cam.main 12
execute positioned ^ ^ ^-0.1 if predicate cam:light_12 run scoreboard players set light= cam.main 13
execute positioned ^ ^ ^-0.1 if predicate cam:light_13 run scoreboard players set light= cam.main 14
execute positioned ^ ^ ^-0.1 if predicate cam:light_14 run scoreboard players set light= cam.main 15
execute positioned ^ ^ ^-0.1 if predicate cam:light_15 run scoreboard players set light= cam.main 16

scoreboard players operation darken= cam.main *= light= cam.main
scoreboard players operation darken= cam.main /= #16 cam.main
##applying shading
execute store result score color= cam.main run data get storage cam:main color.r
execute store result storage cam:main color.r int 0.01 run scoreboard players operation color= cam.main *= darken= cam.main
execute store result score color= cam.main run data get storage cam:main color.g
execute store result storage cam:main color.g int 0.01 run scoreboard players operation color= cam.main *= darken= cam.main
execute store result score color= cam.main run data get storage cam:main color.b
execute store result storage cam:main color.b int 0.01 run scoreboard players operation color= cam.main *= darken= cam.main

##applying water if set
execute if score water= cam.main matches 1 run function cam:capture/apply_water

#converting specified color values into rgb string
execute in cam:resolve run function cam:capture/get_color