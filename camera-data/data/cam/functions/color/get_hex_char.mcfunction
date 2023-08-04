#> @macros
# input: 
# r1, r2, b1, b2, g1, g2
# for all 0-255 chars in array
$data modify storage cam:temp r set string storage cam:main hex_chars[$(r)]
$data modify storage cam:temp g set string storage cam:main hex_chars[$(g)]
$data modify storage cam:temp b set string storage cam:main hex_chars[$(b)]