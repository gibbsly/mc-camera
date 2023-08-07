execute store success score block= cam.main if block ~ ~ ~ #cam:capture

#execute if score feedback= cam.main matches 1 if score particles= cam.main matches 1 if score block= cam.main matches 0 run particle flame ~ ~ ~ 0 0 0 0 1 force
#execute if score feedback= cam.main matches 1 if score particles= cam.main matches 1 if score block= cam.main matches 1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute if score block= cam.main matches 0 run function cam:capture/get_sky
execute if score block= cam.main matches 1 run function cam:capture/get_texture

scoreboard players set captured= cam.main 1

#execute store result score r= cam.main run data get storage cam:main color.r
#execute store result score g= cam.main run data get storage cam:main color.g
#execute store result score b= cam.main run data get storage cam:main color.b
#
#execute store result score sky_rd= cam.main run scoreboard players operation r= cam.main += sky_rd= cam.main
#execute store result score sky_gd= cam.main run scoreboard players operation g= cam.main += sky_gd= cam.main
#execute store result score sky_bd= cam.main run scoreboard players operation b= cam.main += sky_bd= cam.main
#
#scoreboard players operation r= cam.main /= bitdepth= cam.main
#scoreboard players operation g= cam.main /= bitdepth= cam.main
#scoreboard players operation b= cam.main /= bitdepth= cam.main
#
#scoreboard players operation r= cam.main *= bitdepth= cam.main
#scoreboard players operation g= cam.main *= bitdepth= cam.main
#scoreboard players operation b= cam.main *= bitdepth= cam.main
#
#execute if score r= cam.main matches 256.. run scoreboard players set r= cam.main 255
#execute if score g= cam.main matches 256.. run scoreboard players set g= cam.main 255
#execute if score b= cam.main matches 256.. run scoreboard players set b= cam.main 255
#
#scoreboard players operation sky_rd= cam.main %= bitdepth= cam.main
#scoreboard players operation sky_gd= cam.main %= bitdepth= cam.main
#scoreboard players operation sky_bd= cam.main %= bitdepth= cam.main
#
#execute store result storage cam:main color.r int 1 run scoreboard players get r= cam.main
#execute store result storage cam:main color.g int 1 run scoreboard players get g= cam.main
#execute store result storage cam:main color.b int 1 run scoreboard players get b= cam.main

data modify storage cam:main line append from storage cam:main color