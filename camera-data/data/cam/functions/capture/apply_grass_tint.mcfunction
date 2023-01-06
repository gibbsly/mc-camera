data modify storage cam:main tint_color set value {r:124,g:195,b:66}

execute store result score tint= cam.main run data get storage cam:main tint_color.r
execute store result score color= cam.main run data get storage cam:main color.r
execute store result storage cam:main color.r int 0.00392156862 run scoreboard players operation color= cam.main *= tint= cam.main
execute store result score tint= cam.main run data get storage cam:main tint_color.g
execute store result score color= cam.main run data get storage cam:main color.g
execute store result storage cam:main color.g int 0.00392156862 run scoreboard players operation color= cam.main *= tint= cam.main
execute store result score tint= cam.main run data get storage cam:main tint_color.b
execute store result score color= cam.main run data get storage cam:main color.b
execute store result storage cam:main color.b int 0.00392156862 run scoreboard players operation color= cam.main *= tint= cam.main