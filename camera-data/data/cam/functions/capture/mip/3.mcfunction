scoreboard players operation u= cam.main /= #8 cam.main
scoreboard players operation v= cam.main /= #8 cam.main
scoreboard players operation u= cam.main *= #8 cam.main
scoreboard players operation v= cam.main *= #8 cam.main
execute if predicate cam:ma run scoreboard players add u= cam.main 1
execute if predicate cam:ma run scoreboard players add v= cam.main 1