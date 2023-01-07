scoreboard players add $step suso.ray 1

scoreboard players operation $rx suso.ray = $x suso.ray
scoreboard players operation $ry suso.ray = $y suso.ray
scoreboard players operation $rz suso.ray = $z suso.ray

scoreboard players operation $rx suso.ray /= $dx suso.ray
scoreboard players operation $ry suso.ray /= $dy suso.ray
scoreboard players operation $rz suso.ray /= $dz suso.ray

scoreboard players set $dir suso.ray 0
execute if score $ry suso.ray < $rx suso.ray if score $ry suso.ray <= $rz suso.ray run scoreboard players set $dir suso.ray 1
execute if score $rz suso.ray < $rx suso.ray if score $rz suso.ray < $ry suso.ray run scoreboard players set $dir suso.ray 2
