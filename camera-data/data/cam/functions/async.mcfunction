scoreboard players set tick_done= cam.main 0

worldborder set 59999500
worldborder set 59999700 1

execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 1 run function cam:async/initilize

execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 2 run function cam:async/capture_data_start
execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 3 as 0-0-0-0-63616D at @s run function cam:async/capture_data
execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 3 unless score lines= cam.main matches ..98 run function cam:async/capture_data_end

execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 4 run function cam:async/generate_colors_start
execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 5 run function cam:async/generate_colors
execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 5 if score sg= cam.main matches 1 run function cam:display_picture_bossbar
execute if score cas= cam.main matches 5 unless data storage cam:main colors[0][0] run function cam:async/generate_colors_end

execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 6 run function cam:async/resolve_data
execute if score tick_done= cam.main matches 0 if score cas= cam.main matches 7 run function cam:async/finish

#xecute if score cas= cam.main matches 4..5 run worldborder set 59999500
#xecute if score cas= cam.main matches 4..5 run worldborder set 59999700 1