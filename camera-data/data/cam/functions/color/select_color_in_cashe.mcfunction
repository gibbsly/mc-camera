data modify storage cam:main color_cashe[].selected set value 0b

execute store result score o= cam.main run data get storage cam:main color.r
execute if score o= cam.main matches 000..015 run function cam:color/select/r/object_000
execute if score o= cam.main matches 016..031 run function cam:color/select/r/object_016
execute if score o= cam.main matches 032..047 run function cam:color/select/r/object_032
execute if score o= cam.main matches 048..063 run function cam:color/select/r/object_048
execute if score o= cam.main matches 064..079 run function cam:color/select/r/object_064
execute if score o= cam.main matches 080..095 run function cam:color/select/r/object_080
execute if score o= cam.main matches 096..111 run function cam:color/select/r/object_096
execute if score o= cam.main matches 112..127 run function cam:color/select/r/object_112
execute if score o= cam.main matches 128..143 run function cam:color/select/r/object_128
execute if score o= cam.main matches 144..159 run function cam:color/select/r/object_144
execute if score o= cam.main matches 160..175 run function cam:color/select/r/object_160
execute if score o= cam.main matches 176..191 run function cam:color/select/r/object_176
execute if score o= cam.main matches 192..207 run function cam:color/select/r/object_192
execute if score o= cam.main matches 208..223 run function cam:color/select/r/object_208
execute if score o= cam.main matches 224..239 run function cam:color/select/r/object_224
execute if score o= cam.main matches 240..255 run function cam:color/select/r/object_240

execute store result score o= cam.main run data get storage cam:main color.g
execute if score o= cam.main matches 000..015 run function cam:color/select/g/object_000
execute if score o= cam.main matches 016..031 run function cam:color/select/g/object_016
execute if score o= cam.main matches 032..047 run function cam:color/select/g/object_032
execute if score o= cam.main matches 048..063 run function cam:color/select/g/object_048
execute if score o= cam.main matches 064..079 run function cam:color/select/g/object_064
execute if score o= cam.main matches 080..095 run function cam:color/select/g/object_080
execute if score o= cam.main matches 096..111 run function cam:color/select/g/object_096
execute if score o= cam.main matches 112..127 run function cam:color/select/g/object_112
execute if score o= cam.main matches 128..143 run function cam:color/select/g/object_128
execute if score o= cam.main matches 144..159 run function cam:color/select/g/object_144
execute if score o= cam.main matches 160..175 run function cam:color/select/g/object_160
execute if score o= cam.main matches 176..191 run function cam:color/select/g/object_176
execute if score o= cam.main matches 192..207 run function cam:color/select/g/object_192
execute if score o= cam.main matches 208..223 run function cam:color/select/g/object_208
execute if score o= cam.main matches 224..239 run function cam:color/select/g/object_224
execute if score o= cam.main matches 240..255 run function cam:color/select/g/object_240

execute store result score o= cam.main run data get storage cam:main color.b
execute if score o= cam.main matches 000..015 run function cam:color/select/b/object_000
execute if score o= cam.main matches 016..031 run function cam:color/select/b/object_016
execute if score o= cam.main matches 032..047 run function cam:color/select/b/object_032
execute if score o= cam.main matches 048..063 run function cam:color/select/b/object_048
execute if score o= cam.main matches 064..079 run function cam:color/select/b/object_064
execute if score o= cam.main matches 080..095 run function cam:color/select/b/object_080
execute if score o= cam.main matches 096..111 run function cam:color/select/b/object_096
execute if score o= cam.main matches 112..127 run function cam:color/select/b/object_112
execute if score o= cam.main matches 128..143 run function cam:color/select/b/object_128
execute if score o= cam.main matches 144..159 run function cam:color/select/b/object_144
execute if score o= cam.main matches 160..175 run function cam:color/select/b/object_160
execute if score o= cam.main matches 176..191 run function cam:color/select/b/object_176
execute if score o= cam.main matches 192..207 run function cam:color/select/b/object_192
execute if score o= cam.main matches 208..223 run function cam:color/select/b/object_208
execute if score o= cam.main matches 224..239 run function cam:color/select/b/object_224
execute if score o= cam.main matches 240..255 run function cam:color/select/b/object_240