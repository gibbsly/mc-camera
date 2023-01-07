scoreboard players operation $temp suso.ray = $dx suso.ray
scoreboard players operation $temp suso.ray *= $ry suso.ray
scoreboard players operation $x suso.ray -= $temp suso.ray

scoreboard players operation $temp suso.ray = $dz suso.ray
scoreboard players operation $temp suso.ray *= $ry suso.ray
scoreboard players operation $z suso.ray -= $temp suso.ray

scoreboard players set $y suso.ray 1000000