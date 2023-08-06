execute store result score c= cam.main run data get storage cam:main color.r
function cam:color/hex_tree
data modify storage cam:temp r set from storage cam:temp c

execute store result score c= cam.main run data get storage cam:main color.g
function cam:color/hex_tree
data modify storage cam:temp g set from storage cam:temp c

execute store result score c= cam.main run data get storage cam:main color.b
function cam:color/hex_tree
data modify storage cam:temp b set from storage cam:temp c

function cam:color/concat_hex with storage cam:temp {}

data modify storage cam:main line append from storage cam:temp rgb