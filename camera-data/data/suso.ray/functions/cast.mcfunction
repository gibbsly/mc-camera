scoreboard players set $step suso.ray 0
scoreboard players set $end suso.ray 0

tp 50502711-0000-0000-0003-000000000000 ~ ~ ~
execute store result score $tx suso.ray run data get entity 50502711-0000-0000-0003-000000000000 Pos[0] 1000
execute store result score $ty suso.ray run data get entity 50502711-0000-0000-0003-000000000000 Pos[1] 1000
execute store result score $tz suso.ray run data get entity 50502711-0000-0000-0003-000000000000 Pos[2] 1000

tp 50502711-0000-0000-0003-000000000000 ^ ^ ^1
execute store result score $tdx suso.ray run data get entity 50502711-0000-0000-0003-000000000000 Pos[0] 1000
execute store result score $tdy suso.ray run data get entity 50502711-0000-0000-0003-000000000000 Pos[1] 1000
execute store result score $tdz suso.ray run data get entity 50502711-0000-0000-0003-000000000000 Pos[2] 1000
scoreboard players operation $tdx suso.ray -= $tx suso.ray
scoreboard players operation $tdy suso.ray -= $ty suso.ray
scoreboard players operation $tdz suso.ray -= $tz suso.ray

tp 50502711-0000-0000-0003-000000000000 29999984 0 27115040
scoreboard players operation $tx suso.ray %= #1000 suso.ray
scoreboard players operation $ty suso.ray %= #1000 suso.ray
scoreboard players operation $tz suso.ray %= #1000 suso.ray
scoreboard players operation $dx suso.ray = $tdx suso.ray
scoreboard players operation $dy suso.ray = $tdy suso.ray
scoreboard players operation $dz suso.ray = $tdz suso.ray
execute if score $tdx suso.ray matches 0.. run function suso.ray:sub/x
execute unless score $tdx suso.ray matches 0.. run function suso.ray:sub/x_
execute if score $tdy suso.ray matches 0.. run function suso.ray:sub/y
execute unless score $tdy suso.ray matches 0.. run function suso.ray:sub/y_
execute if score $tdz suso.ray matches 0.. run function suso.ray:sub/z
execute unless score $tdz suso.ray matches 0.. run function suso.ray:sub/z_
scoreboard players operation $x suso.ray *= #1000 suso.ray
scoreboard players operation $y suso.ray *= #1000 suso.ray
scoreboard players operation $z suso.ray *= #1000 suso.ray

execute if score $tdx suso.ray matches 0.. run function suso.ray:step/choose/0
execute unless score $tdx suso.ray matches 0.. run function suso.ray:step/choose/1