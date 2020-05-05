function cam:resolve/sign
execute store result bossbar cam:prog value run scoreboard players add total= cam.main 1
data remove storage cam:main image[0]
execute if data storage cam:main image[0] run function cam:resolve_data