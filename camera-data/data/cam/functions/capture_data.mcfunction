#creating and placing camera entities
summon minecraft:armor_stand ~ ~ ~ {UUID:[I;0,0,0,6513005],Marker:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {UUID:[I;0,0,0,6513006],Marker:1b,Invisible:1b}

tp 0-0-0-0-63616D @s
tp 0-0-0-0-63616D ~ ~1.625 ~ ~ ~

#capturing data
execute as 0-0-0-0-63616D at @s run function cam:capture/init

#killing entities
kill 0-0-0-0-63616D
kill 0-0-0-0-63616E