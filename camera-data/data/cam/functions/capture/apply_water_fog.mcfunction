scoreboard players operation rd= cam.main -= fog_distance= cam.main
execute if score rd= cam.main > fog_atten= cam.main run scoreboard players operation rd= cam.main = fog_atten= cam.main

scoreboard players operation fd= cam.main = rd= cam.main
scoreboard players operation fd= cam.main -= fog_atten= cam.main
scoreboard players operation fd= cam.main *= #-1 cam.main

#default fog color {r:180,g:207,b:255}
data modify storage cam:main fog_color set value {r:180,g:207,b:255}

#applying fog
execute store result score color= cam.main run data get storage cam:main water_color.r
scoreboard players operation color= cam.main *= fd= cam.main
scoreboard players operation color= cam.main /= fog_atten= cam.main
execute store result score fog_color= cam.main run data get storage cam:main fog_color.r
scoreboard players operation fog_color= cam.main *= rd= cam.main
scoreboard players operation fog_color= cam.main /= fog_atten= cam.main
execute store result storage cam:main water_color.r int 1 run scoreboard players operation color= cam.main += fog_color= cam.main

execute store result score color= cam.main run data get storage cam:main water_color.g
scoreboard players operation color= cam.main *= fd= cam.main
scoreboard players operation color= cam.main /= fog_atten= cam.main
execute store result score fog_color= cam.main run data get storage cam:main fog_color.g
scoreboard players operation fog_color= cam.main *= rd= cam.main
scoreboard players operation fog_color= cam.main /= fog_atten= cam.main
execute store result storage cam:main water_color.g int 1 run scoreboard players operation color= cam.main += fog_color= cam.main

execute store result score color= cam.main run data get storage cam:main water_color.b
scoreboard players operation color= cam.main *= fd= cam.main
scoreboard players operation color= cam.main /= fog_atten= cam.main
execute store result score fog_color= cam.main run data get storage cam:main fog_color.b
scoreboard players operation fog_color= cam.main *= rd= cam.main
scoreboard players operation fog_color= cam.main /= fog_atten= cam.main
execute store result storage cam:main water_color.b int 1 run scoreboard players operation color= cam.main += fog_color= cam.main