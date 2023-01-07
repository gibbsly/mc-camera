scoreboard players operation $temp suso.ray = $dy suso.ray
scoreboard players operation $temp suso.ray *= $rx suso.ray
scoreboard players operation $y suso.ray -= $temp suso.ray

scoreboard players operation $temp suso.ray = $dz suso.ray
scoreboard players operation $temp suso.ray *= $rx suso.ray
scoreboard players operation $z suso.ray -= $temp suso.ray

scoreboard players set $x suso.ray 1000000