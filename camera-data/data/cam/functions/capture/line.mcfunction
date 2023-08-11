#execute store result bossbar cam:prog value run scoreboard players add total= cam.main 1

#capturing ray
scoreboard players set dist= cam.main 0
scoreboard players set water= cam.main 0
scoreboard players set captured= cam.main 0
execute at 0-0-0-0-63616E facing entity 0-0-0-0-63616D feet positioned as 0-0-0-0-63616D run function cam:capture/ray

#loop
scoreboard players add rays= cam.main 1
execute rotated as 0-0-0-0-63616D positioned as 0-0-0-0-63616E run tp 0-0-0-0-63616E ^0.01 ^ ^
execute if score rays= cam.main matches ..98 run function cam:capture/line


#execute rotated as 0-0-0-0-63616D positioned as 0-0-0-0-63616E run tp 0-0-0-0-63616E ^0.99 ^ ^