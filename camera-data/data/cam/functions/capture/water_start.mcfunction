scoreboard players set water= cam.main 1

#getting pos in block as texture coordinates
tp 0-0-0-0-63616F ~ ~ ~ 
execute positioned ^ ^ ^-0.015625 if block ~ ~0.125 ~ water run tp 0-0-0-0-63616F ~ ~ ~ 
execute positioned ^ ^ ^-0.031250 if block ~ ~0.125 ~ water run tp 0-0-0-0-63616F ~ ~ ~ 
execute positioned ^ ^ ^-0.046875 if block ~ ~0.125 ~ water run tp 0-0-0-0-63616F ~ ~ ~ 
data modify storage cam:main pos set from entity 0-0-0-0-63616F Pos
execute store result score xpos= cam.main run data get storage cam:main pos[0] 64
execute store result score ypos= cam.main run data get storage cam:main pos[1] 64
execute store result score zpos= cam.main run data get storage cam:main pos[2] 64
scoreboard players operation xpos= cam.main %= #64 cam.main
scoreboard players operation ypos= cam.main %= #64 cam.main
scoreboard players operation zpos= cam.main %= #64 cam.main
execute positioned as 0-0-0-0-63616F run particle end_rod ~ ~0.1 ~

#determining wface based on coordinate
scoreboard players operation pwface= cam.main = wface= cam.main
scoreboard players set ft= cam.main 0
##1 - top +y
execute if score ypos= cam.main matches 54.. run scoreboard players set wface= cam.main 1
execute if score ypos= cam.main matches 54.. run scoreboard players add ft= cam.main 1
##6 - bottom -y
execute if score ypos= cam.main matches ..0 run scoreboard players set wface= cam.main 6
execute if score ypos= cam.main matches ..0 run scoreboard players add ft= cam.main 1

##2 - north -z
execute if score zpos= cam.main matches ..0 run scoreboard players set wface= cam.main 2
execute if score zpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##3 - south +z
execute if score zpos= cam.main matches 63.. run scoreboard players set wface= cam.main 3
execute if score zpos= cam.main matches 63.. run scoreboard players add ft= cam.main 1

##4 - west -x
execute if score xpos= cam.main matches ..0 run scoreboard players set wface= cam.main 4
execute if score xpos= cam.main matches ..0 run scoreboard players add ft= cam.main 1
##5 - east +x
execute if score xpos= cam.main matches 63.. run scoreboard players set wface= cam.main 5
execute if score xpos= cam.main matches 63.. run scoreboard players add ft= cam.main 1

##reverting to previous wface if wface is ambiguous 
execute unless score ft= cam.main matches 1 unless score pwface= cam.main matches -1 run scoreboard players operation wface= cam.main = pwface= cam.main

#getting uv coordinates
execute unless score wface= cam.main matches 2..5 run scoreboard players operation u= cam.main = xpos= cam.main
execute unless score wface= cam.main matches 2..5 run scoreboard players operation v= cam.main = zpos= cam.main

execute if score wface= cam.main matches 2..5 run scoreboard players operation v= cam.main = ypos= cam.main
execute if score wface= cam.main matches 2..3 run scoreboard players operation u= cam.main = xpos= cam.main
execute if score wface= cam.main matches 4..5 run scoreboard players operation u= cam.main = zpos= cam.main

scoreboard players operation u= cam.main /= #4 cam.main
scoreboard players operation v= cam.main /= #4 cam.main
scoreboard players remove v= cam.main 15
scoreboard players operation v= cam.main *= #-1 cam.main
scoreboard players operation v= cam.main >< u= cam.main

#aplying mipmapping
scoreboard players operation rd= cam.main /= #16 cam.main
execute if score rd= cam.main matches 8..15 run function cam:capture/mip/1
execute if score rd= cam.main matches 16..31 run function cam:capture/mip/2
execute if score rd= cam.main matches 32..63 run function cam:capture/mip/3
execute if score rd= cam.main matches 64.. run function cam:capture/mip/4

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
function cam:capture/block/texture/water_still
execute if score v= cam.main matches 00 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[0]
execute if score v= cam.main matches 01 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[1]
execute if score v= cam.main matches 02 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[2]
execute if score v= cam.main matches 03 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[3]
execute if score v= cam.main matches 04 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[4]
execute if score v= cam.main matches 05 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[5]
execute if score v= cam.main matches 06 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[6]
execute if score v= cam.main matches 07 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[7]
execute if score v= cam.main matches 08 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[8]
execute if score v= cam.main matches 09 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[9]
execute if score v= cam.main matches 10 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[10]
execute if score v= cam.main matches 11 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[11]
execute if score v= cam.main matches 12 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[12]
execute if score v= cam.main matches 13 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[13]
execute if score v= cam.main matches 14 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[14]
execute if score v= cam.main matches 15 if data storage cam:temp uv[0] run data modify storage cam:main water_color set from storage cam:temp uv[15]

data modify storage cam:main tint_color set value {r:63,g:118,b:228}

execute store result score tint= cam.main run data get storage cam:main tint_color.r
execute store result score color= cam.main run data get storage cam:main water_color.r
execute store result storage cam:main water_color.r int 0.00392156862 run scoreboard players operation color= cam.main *= tint= cam.main
execute store result score tint= cam.main run data get storage cam:main tint_color.g
execute store result score color= cam.main run data get storage cam:main water_color.g
execute store result storage cam:main water_color.g int 0.00392156862 run scoreboard players operation color= cam.main *= tint= cam.main
execute store result score tint= cam.main run data get storage cam:main tint_color.b
execute store result score color= cam.main run data get storage cam:main water_color.b
execute store result storage cam:main water_color.b int 0.00392156862 run scoreboard players operation color= cam.main *= tint= cam.main

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