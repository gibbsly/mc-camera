function suso.ray:step/base

execute if score $dir suso.ray matches 0 positioned ~-1 ~ ~ run function suso.ray:step/100/x
execute if score $dir suso.ray matches 1 positioned ~ ~1 ~ run function suso.ray:step/100/y
execute if score $dir suso.ray matches 2 positioned ~ ~ ~1 run function suso.ray:step/100/z