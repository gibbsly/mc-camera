function suso.ray:move/x
execute if score $step suso.ray < $limit suso.ray unless block ~ ~ ~ #cam:capture run function suso.ray:step/101/do
execute if score $end suso.ray matches 0 run function suso.ray:end/do