#execute store result bossbar cam:prog value run scoreboard players add total= cam.main 1

#getting color
data modify storage cam:main color set from storage cam:main colors[0][0]
function cam:color/get_color

#colors array handling
data remove storage cam:main colors[0][0]
execute unless data storage cam:main colors[0][0] run function cam:color/new_line

#time handling
execute store result score time= cam.main run worldborder get


execute if data storage cam:main colors[0][0] unless score time= cam.main matches 59999509.. run function cam:async/generate_colors