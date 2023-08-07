execute if block ~ ~ ~ acacia_leaves run function cam:capture/block/texture/acacia_leaves
execute if block ~ ~ ~ acacia_log[axis=x] run function cam:capture/block/multi_side_log {"top":"acacia_log_top","side":"acacia_log","axis":"1"}
execute if block ~ ~ ~ acacia_log[axis=y] run function cam:capture/block/multi_side_log {"top":"acacia_log_top","side":"acacia_log","axis":"2"}
execute if block ~ ~ ~ acacia_log[axis=z] run function cam:capture/block/multi_side_log {"top":"acacia_log_top","side":"acacia_log","axis":"3"}
# execute if block ~ ~ ~ acacia_log run function cam:capture/block/texture/acacia_log
execute if block ~ ~ ~ acacia_planks run function cam:capture/block/texture/acacia_planks
execute if block ~ ~ ~ acacia_wood run function cam:capture/block/texture/acacia_log
execute if block ~ ~ ~ amethyst_block run function cam:capture/block/texture/amethyst_block
execute if block ~ ~ ~ amethyst_cluster run function cam:capture/block/texture/amethyst_cluster
execute if block ~ ~ ~ ancient_debris run function cam:capture/block/multi_side {"top":"ancient_debris_top","north":"ancient_debris_side","south":"ancient_debris_side","east":"ancient_debris_side","west":"ancient_debris_side","bottom":"ancient_debris_top"}
execute if block ~ ~ ~ andesite run function cam:capture/block/texture/andesite
