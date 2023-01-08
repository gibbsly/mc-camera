#getting pos in block as texture coordinates
execute positioned as 50502711-0000-0000-0003-000000000002 run tp 0-0-0-0-63616F ~ ~ ~ 
data modify storage cam:main pos set from entity 0-0-0-0-63616F Pos
execute store result score xpos= cam.main run data get storage cam:main pos[0] 64
execute store result score ypos= cam.main run data get storage cam:main pos[1] 64
execute store result score zpos= cam.main run data get storage cam:main pos[2] 64
scoreboard players operation xpos= cam.main %= #64 cam.main
scoreboard players operation ypos= cam.main %= #64 cam.main
scoreboard players operation zpos= cam.main %= #64 cam.main

#determining face based on coordinate
scoreboard players operation face= cam.main = $face suso.ray
execute if score $yface suso.ray matches 01 positioned ~00 ~01 ~00 unless block ~ ~ ~ #cam:capture run scoreboard players set face= cam.main 1
execute if score $yface suso.ray matches -1 positioned ~00 ~-1 ~00 unless block ~ ~ ~ #cam:capture run scoreboard players set face= cam.main 6
execute if score $xface suso.ray matches 01 positioned ~01 ~00 ~00 unless block ~ ~ ~ #cam:capture run scoreboard players set face= cam.main 5
execute if score $xface suso.ray matches -1 positioned ~-1 ~00 ~00 unless block ~ ~ ~ #cam:capture run scoreboard players set face= cam.main 4
execute if score $zface suso.ray matches 01 positioned ~00 ~00 ~01 unless block ~ ~ ~ #cam:capture run scoreboard players set face= cam.main 3
execute if score $zface suso.ray matches -1 positioned ~00 ~00 ~-1 unless block ~ ~ ~ #cam:capture run scoreboard players set face= cam.main 2


#getting uv coordinates
execute unless score face= cam.main matches 2..5 run scoreboard players operation u= cam.main = xpos= cam.main
execute unless score face= cam.main matches 2..5 run scoreboard players operation v= cam.main = zpos= cam.main

execute if score face= cam.main matches 2..5 run scoreboard players operation v= cam.main = ypos= cam.main
execute if score face= cam.main matches 2..3 run scoreboard players operation u= cam.main = xpos= cam.main
execute if score face= cam.main matches 4..5 run scoreboard players operation u= cam.main = zpos= cam.main

scoreboard players operation u= cam.main /= #4 cam.main
scoreboard players operation v= cam.main /= #4 cam.main
scoreboard players remove v= cam.main 15
scoreboard players operation v= cam.main *= #-1 cam.main
scoreboard players operation v= cam.main >< u= cam.main

#aplying mipmapping
scoreboard players operation rd= cam.main /= #16 cam.main
execute if score rd= cam.main matches 8..15 run function cam:capture/mip/1
execute if score rd= cam.main matches 16..31 run function cam:capture/mip/2
execute if score rd= cam.main matches 32.. run function cam:capture/mip/3
#execute if score rd= cam.main matches 64.. run function cam:capture/mip/4

#running functions to get colors
data modify storage cam:main color set value {r:255,g:0,b:255}
function cam:capture/block_textures

#running shading operations
##applying tint if specified
execute if data storage cam:main color{tint:1} run function cam:capture/apply_grass_tint
execute if data storage cam:main color{tint:2} run function cam:capture/apply_leaf_tint


##face brigtness
scoreboard players set darken= cam.main 100
execute if score face= cam.main matches 2..3 run scoreboard players set darken= cam.main 62
execute if score face= cam.main matches 4..5 run scoreboard players set darken= cam.main 80
execute if score face= cam.main matches 6 run scoreboard players set darken= cam.main 50
##getting block light
scoreboard players set light= cam.main 16
execute if score face= cam.main matches 1 positioned ~00 ~01 ~00 run function cam:capture/get_light
execute if score face= cam.main matches 2 positioned ~00 ~00 ~-1 run function cam:capture/get_light
execute if score face= cam.main matches 3 positioned ~00 ~00 ~01 run function cam:capture/get_light
execute if score face= cam.main matches 4 positioned ~-1 ~00 ~00 run function cam:capture/get_light
execute if score face= cam.main matches 5 positioned ~01 ~00 ~00 run function cam:capture/get_light
execute if score face= cam.main matches 6 positioned ~00 ~-1 ~00 run function cam:capture/get_light

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
data modify storage cam:main line append from storage cam:main color