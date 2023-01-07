scoreboard players operation $temp suso.ray = $dx suso.ray
scoreboard players operation $temp suso.ray *= $rz suso.ray
scoreboard players operation $x suso.ray -= $temp suso.ray

scoreboard players operation $temp suso.ray = $dy suso.ray
scoreboard players operation $temp suso.ray *= $rz suso.ray
scoreboard players operation $y suso.ray -= $temp suso.ray

scoreboard players set $z suso.ray 1000000