# @macros
# input: 
# r1, r2, b1, b2, g1, g2
#$data modify storage cam:temp rgb set value '{"text":"$(pixel)","color":"#$(r)$(g)$(b)"}'

$data modify storage cam:temp rgb set value '{"text":"$(pixel)","color":"#$(r1)$(r2)$(g1)$(g2)$(b1)$(b2)"}'
