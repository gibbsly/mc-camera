#getting pos in block as texture coordinates
tp 0-0-0-0-63616F ~ ~ ~ 
execute positioned ^ ^ ^-0.015625 if block ~ ~ ~ #cam:capture run tp 0-0-0-0-63616F ~ ~ ~ 
execute positioned ^ ^ ^-0.031250 if block ~ ~ ~ #cam:capture run tp 0-0-0-0-63616F ~ ~ ~ 
execute positioned ^ ^ ^-0.046875 if block ~ ~ ~ #cam:capture run tp 0-0-0-0-63616F ~ ~ ~ 
execute as 0-0-0-0-63616F positioned as @s positioned ^ ^ ^-0.0078125 if block ~ ~ ~ #cam:capture run tp 0-0-0-0-63616F ~ ~ ~
data modify storage cam:main pos set from entity 0-0-0-0-63616F Pos
execute store result score xpos= cam.main run data get storage cam:main pos[0] 128
execute store result score ypos= cam.main run data get storage cam:main pos[1] 128
execute store result score zpos= cam.main run data get storage cam:main pos[2] 128
scoreboard players operation xpos= cam.main %= #128 cam.main
scoreboard players operation ypos= cam.main %= #128 cam.main
scoreboard players operation zpos= cam.main %= #128 cam.main

#determining face based on coordinate
scoreboard players operation pface= cam.main = face= cam.main
scoreboard players set ft= cam.main 0
##1 - top +y
execute if score ypos= cam.main matches 127.. run scoreboard players set face= cam.main 1
execute if score ypos= cam.main matches 127.. run scoreboard players add ft= cam.main 1
##6 - bottom -y
execute if score ypos= cam.main matches ..0 run scoreboard players set face= cam.main 6
execute if score ypos= cam.main matches ..0 run scoreboard players add ft= cam.main 1

##2 - north -z
execute if score zpos= cam.main matches ..0 run scoreboard players set face= cam.main 2
execute if score zpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##3 - south +z
execute if score zpos= cam.main matches 127.. run scoreboard players set face= cam.main 3
execute if score zpos= cam.main matches 127.. run scoreboard players add ft= cam.main 1

##4 - west -x
execute if score xpos= cam.main matches ..0 run scoreboard players set face= cam.main 4
execute if score xpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##5 - east +x
execute if score xpos= cam.main matches 127.. run scoreboard players set face= cam.main 5
execute if score xpos= cam.main matches 127.. run scoreboard players add ft= cam.main 1

##reverting to previous face if face is ambiguous 
execute unless score ft= cam.main matches 1 unless score pface= cam.main matches -1 run scoreboard players operation face= cam.main = pface= cam.main

#getting uv coordinates
execute unless score face= cam.main matches 2..5 run scoreboard players operation u= cam.main = xpos= cam.main
execute unless score face= cam.main matches 2..5 run scoreboard players operation v= cam.main = zpos= cam.main

execute if score face= cam.main matches 2..5 run scoreboard players operation v= cam.main = ypos= cam.main
execute if score face= cam.main matches 2..3 run scoreboard players operation u= cam.main = xpos= cam.main
execute if score face= cam.main matches 4..5 run scoreboard players operation u= cam.main = zpos= cam.main

scoreboard players operation u= cam.main /= #8 cam.main
scoreboard players operation v= cam.main /= #8 cam.main
execute unless score face= cam.main matches 1 run scoreboard players remove v= cam.main 15
execute unless score face= cam.main matches 1 run scoreboard players operation v= cam.main *= #-1 cam.main
execute if score face= cam.main matches 2 run scoreboard players remove u= cam.main 15
execute if score face= cam.main matches 2 run scoreboard players operation u= cam.main *= #-1 cam.main
execute if score face= cam.main matches 5 run scoreboard players remove u= cam.main 15
execute if score face= cam.main matches 5 run scoreboard players operation u= cam.main *= #-1 cam.main
scoreboard players operation v= cam.main >< u= cam.main

#aplying mipmapping
scoreboard players operation rd= cam.main /= #16 cam.main
execute if score rd= cam.main matches 8..15 run function cam:capture/mip/1
execute if score rd= cam.main matches 16..31 run function cam:capture/mip/2
execute if score rd= cam.main matches 32..63 run function cam:capture/mip/3
execute if score rd= cam.main matches 64.. run function cam:capture/mip/4

#running functions to get colors
data modify storage cam:main color set value {r:255,g:0,b:255}
execute positioned as 0-0-0-0-63616F run function cam:capture/block_textures

#running shading operations
##applying tint if specified
execute if data storage cam:main color{tint:1} run function cam:capture/apply_grass_tint
execute if data storage cam:main color{tint:2} run function cam:capture/apply_leaf_tint


##face brigtness
scoreboard players set darken= cam.main 100
execute if score face= cam.main matches 2..3 run scoreboard players set darken= cam.main 80
execute if score face= cam.main matches 4..5 run scoreboard players set darken= cam.main 62
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

#data modify storage cam:main line append from storage cam:main color