execute store result score r= cam.main run data get storage cam:main color.r
execute store result score g= cam.main run data get storage cam:main color.g
execute store result score b= cam.main run data get storage cam:main color.b

scoreboard players operation rx= cam.main %= #16 cam.main
scoreboard players operation rz= cam.main /= #16 cam.main

scoreboard players operation o= cam.main = r= cam.main
execute if score o= cam.main matches 000..015 run function cam:capture/get_color/rgb/object_000
execute if score o= cam.main matches 016..031 run function cam:capture/get_color/rgb/object_016
execute if score o= cam.main matches 032..047 run function cam:capture/get_color/rgb/object_032
execute if score o= cam.main matches 048..063 run function cam:capture/get_color/rgb/object_048
execute if score o= cam.main matches 064..079 run function cam:capture/get_color/rgb/object_064
execute if score o= cam.main matches 080..095 run function cam:capture/get_color/rgb/object_080
execute if score o= cam.main matches 096..111 run function cam:capture/get_color/rgb/object_096
execute if score o= cam.main matches 112..127 run function cam:capture/get_color/rgb/object_112
execute if score o= cam.main matches 128..143 run function cam:capture/get_color/rgb/object_128
execute if score o= cam.main matches 144..159 run function cam:capture/get_color/rgb/object_144
execute if score o= cam.main matches 160..175 run function cam:capture/get_color/rgb/object_160
execute if score o= cam.main matches 176..191 run function cam:capture/get_color/rgb/object_176
execute if score o= cam.main matches 192..207 run function cam:capture/get_color/rgb/object_192
execute if score o= cam.main matches 208..223 run function cam:capture/get_color/rgb/object_208
execute if score o= cam.main matches 224..239 run function cam:capture/get_color/rgb/object_224
execute if score o= cam.main matches 240..255 run function cam:capture/get_color/rgb/object_240

scoreboard players operation o= cam.main = g= cam.main
execute if score o= cam.main matches 000..015 run function cam:capture/get_color/object_000
execute if score o= cam.main matches 016..031 run function cam:capture/get_color/object_016
execute if score o= cam.main matches 032..047 run function cam:capture/get_color/object_032
execute if score o= cam.main matches 048..063 run function cam:capture/get_color/object_048
execute if score o= cam.main matches 064..079 run function cam:capture/get_color/object_064
execute if score o= cam.main matches 080..095 run function cam:capture/get_color/object_080
execute if score o= cam.main matches 096..111 run function cam:capture/get_color/object_096
execute if score o= cam.main matches 112..127 run function cam:capture/get_color/object_112
execute if score o= cam.main matches 128..143 run function cam:capture/get_color/object_128
execute if score o= cam.main matches 144..159 run function cam:capture/get_color/object_144
execute if score o= cam.main matches 160..175 run function cam:capture/get_color/object_160
execute if score o= cam.main matches 176..191 run function cam:capture/get_color/object_176
execute if score o= cam.main matches 192..207 run function cam:capture/get_color/object_192
execute if score o= cam.main matches 208..223 run function cam:capture/get_color/object_208
execute if score o= cam.main matches 224..239 run function cam:capture/get_color/object_224
execute if score o= cam.main matches 240..255 run function cam:capture/get_color/object_240

scoreboard players operation o= cam.main = b= cam.main
execute if score o= cam.main matches 000..015 run function cam:capture/get_color/object_000
execute if score o= cam.main matches 016..031 run function cam:capture/get_color/object_016
execute if score o= cam.main matches 032..047 run function cam:capture/get_color/object_032
execute if score o= cam.main matches 048..063 run function cam:capture/get_color/object_048
execute if score o= cam.main matches 064..079 run function cam:capture/get_color/object_064
execute if score o= cam.main matches 080..095 run function cam:capture/get_color/object_080
execute if score o= cam.main matches 096..111 run function cam:capture/get_color/object_096
execute if score o= cam.main matches 112..127 run function cam:capture/get_color/object_112
execute if score o= cam.main matches 128..143 run function cam:capture/get_color/object_128
execute if score o= cam.main matches 144..159 run function cam:capture/get_color/object_144
execute if score o= cam.main matches 160..175 run function cam:capture/get_color/object_160
execute if score o= cam.main matches 176..191 run function cam:capture/get_color/object_176
execute if score o= cam.main matches 192..207 run function cam:capture/get_color/object_192
execute if score o= cam.main matches 208..223 run function cam:capture/get_color/object_208
execute if score o= cam.main matches 224..239 run function cam:capture/get_color/object_224
execute if score o= cam.main matches 240..255 run function cam:capture/get_color/object_240

data modify storage cam:temp array set value []
data modify storage cam:temp array append from storage cam:temp rgb
data modify storage cam:main line append from storage cam:temp array