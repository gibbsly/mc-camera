execute store result bossbar cam:prog value run scoreboard players add total= cam.main 1

#getting color
data modify storage cam:main color set from storage cam:main colors[0][0]

#reducing color depth
execute store result storage cam:main color.r int 4 run data get storage cam:main color.r 0.25
execute store result storage cam:main color.g int 4 run data get storage cam:main color.g 0.25
execute store result storage cam:main color.b int 4 run data get storage cam:main color.b 0.25

scoreboard players set cashed= cam.main 0
execute if data storage cam:main color_cashe[0] run function cam:color/check_cashe
execute if score cashed= cam.main matches 0 run function cam:color/get_color
execute if score cashed= cam.main matches 1 run function cam:color/load_color_from_cashe

#colors array handling
data remove storage cam:main colors[0][0]
execute unless data storage cam:main colors[0][0] run function cam:color/new_line

#time handling
execute store result score time= cam.main run worldborder get


execute if data storage cam:main colors[0][0] unless score time= cam.main matches 59999509.. run function cam:async/generate_colors