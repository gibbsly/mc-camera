#interpolate from {r:180,g:207,b:255} at 0 to {r:120,g:167,b:255} at 10000
scoreboard players add rot= cam.main 200
scoreboard players operation rot= cam.main *= #-1 cam.main
scoreboard players operation rot= cam.main *= #12 cam.main
scoreboard players operation rot= cam.main /= #4 cam.main

#base value
data modify storage cam:main color set value {r:0,g:0,b:255}

#interpolating r and g
scoreboard players set r= cam.main 180
scoreboard players set g= cam.main 207

scoreboard players set dr= cam.main 60
scoreboard players set dg= cam.main 40

scoreboard players operation dr= cam.main *= rot= cam.main
scoreboard players operation dg= cam.main *= rot= cam.main

scoreboard players operation dr= cam.main /= #10000 cam.main
scoreboard players operation dg= cam.main /= #10000 cam.main

execute if score dr= cam.main matches 61.. run scoreboard players set dr= cam.main 60
execute if score dg= cam.main matches 41.. run scoreboard players set dg= cam.main 40

scoreboard players operation r= cam.main -= dr= cam.main
scoreboard players operation g= cam.main -= dg= cam.main

execute store result storage cam:main color.r int 1 run scoreboard players get r= cam.main
execute store result storage cam:main color.g int 1 run scoreboard players get g= cam.main