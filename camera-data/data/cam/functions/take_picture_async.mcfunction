execute unless score cas= cam.main matches 1.. run scoreboard players set cas= cam.main 1

#creating and placing camera entities
summon minecraft:marker ~ ~ ~ {UUID:[I;0,0,0,6513005]}
summon minecraft:marker ~ ~ ~ {UUID:[I;0,0,0,6513006]}
summon minecraft:marker ~ ~ ~ {UUID:[I;0,0,0,6513007]}

tp 0-0-0-0-63616D @s
tp 0-0-0-0-63616D ~ ~1.625 ~ ~ ~

#capturing data
execute as 0-0-0-0-63616D at @s rotated as 0-0-0-0-63616D positioned as 0-0-0-0-63616D run tp 0-0-0-0-63616E ^-0.495 ^-0.495 ^-0.5

tellraw @a "start"