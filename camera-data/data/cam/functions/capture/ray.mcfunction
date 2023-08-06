execute store result score rd= cam.main run scoreboard players add dist= cam.main 16

execute if score water= cam.main matches 0 store result score nearby= cam.main if predicate cam:nearby
execute if score water= cam.main matches 1 store result score nearby= cam.main if predicate cam:capture_nearby

execute if score nearby= cam.main matches 1 run function cam:capture/hd_ray

execute if score dist= cam.main matches 4096.. if score captured= cam.main matches 0 run function cam:capture/block
execute if score dist= cam.main matches ..4095 positioned ^ ^ ^1 run function cam:capture/ray

#execute store result storage cam:main color.r int 1 run random value 0..255
#execute store result storage cam:main color.g int 1 run random value 0..255
#execute store result storage cam:main color.b int 1 run random value 0..255
#data modify storage cam:main line append from storage cam:main color