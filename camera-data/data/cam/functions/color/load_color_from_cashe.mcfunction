data modify storage cam:temp array set value []
data modify storage cam:temp array append from storage cam:main color_cashe[{selected:1b}].rgb
data modify storage cam:main line append from storage cam:temp array