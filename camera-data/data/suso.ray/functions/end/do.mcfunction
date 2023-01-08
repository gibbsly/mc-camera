execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp 50502711-0000-0000-0003-000000000000 ~ ~ ~
execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp 50502711-0000-0000-0003-000000000001 ~ ~ ~
execute align xyz positioned ~0.5 ~0.5 ~0.5 as 50502711-0000-0000-0003-000000000002 run function suso.ray:end/entity
scoreboard players set $end suso.ray 1
scoreboard players set $dir suso.ray -1


scoreboard players set $face suso.ray -1
scoreboard players set $xface suso.ray 0
scoreboard players set $yface suso.ray 0
scoreboard players set $zface suso.ray 0
scoreboard players operation $x suso.ray %= #1000 suso.ray 
scoreboard players operation $y suso.ray %= #1000 suso.ray
scoreboard players operation $z suso.ray %= #1000 suso.ray

execute if score $x suso.ray matches ..10 unless score $tdx suso.ray matches 0.. run scoreboard players set $face suso.ray 5
execute if score $x suso.ray matches ..10 unless score $tdx suso.ray matches 0.. run scoreboard players set $xface suso.ray 1
execute if score $x suso.ray matches ..10 if score $tdx suso.ray matches 0.. run scoreboard players set $face suso.ray 4
execute if score $x suso.ray matches ..10 if score $tdx suso.ray matches 0.. run scoreboard players set $xface suso.ray -1

execute if score $z suso.ray matches ..10 unless score $tdz suso.ray matches 0.. run scoreboard players set $face suso.ray 3
execute if score $z suso.ray matches ..10 unless score $tdz suso.ray matches 0.. run scoreboard players set $zface suso.ray 1
execute if score $z suso.ray matches ..10 if score $tdz suso.ray matches 0.. run scoreboard players set $face suso.ray 2
execute if score $z suso.ray matches ..10 if score $tdz suso.ray matches 0.. run scoreboard players set $zface suso.ray -1

execute if score $y suso.ray matches ..10 unless score $tdy suso.ray matches 0.. run scoreboard players set $face suso.ray 1
execute if score $y suso.ray matches ..10 unless score $tdy suso.ray matches 0.. run scoreboard players set $yface suso.ray 1
execute if score $y suso.ray matches ..10 if score $tdy suso.ray matches 0.. run scoreboard players set $face suso.ray 6
execute if score $y suso.ray matches ..10 if score $tdy suso.ray matches 0.. run scoreboard players set $yface suso.ray -1

execute as 50502711-0000-0000-0003-000000000001 at @s run function cam:capture/block