execute store result score color= cam.main run data get storage cam:main color.r
execute store result score water_color= cam.main run data get storage cam:main water_color.r 2
execute store result storage cam:main color.r int 0.3333 run scoreboard players operation color= cam.main += water_color= cam.main

execute store result score color= cam.main run data get storage cam:main color.g
execute store result score water_color= cam.main run data get storage cam:main water_color.g 2
execute store result storage cam:main color.g int 0.3333 run scoreboard players operation color= cam.main += water_color= cam.main

execute store result score color= cam.main run data get storage cam:main color.b
execute store result score water_color= cam.main run data get storage cam:main water_color.b 2
execute store result storage cam:main color.b int 0.3333 run scoreboard players operation color= cam.main += water_color= cam.main

