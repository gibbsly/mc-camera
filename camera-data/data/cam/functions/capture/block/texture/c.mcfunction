execute if block ~ ~ ~ calcite run function cam:capture/block/texture/calcite
execute if block ~ ~ ~ cartography_table run function cam:capture/block/multi_side {"top":"cartography_table_top","bottom":"cartography_table_side3","north":"cartography_table_side3","south":"cartography_table_side1","east":"cartography_table_side3","west":"cartography_table_side2"}
execute if block ~ ~ ~ carved_pumpkin[facing=north] run function cam:capture/block/texture/multi_side_facing {"top":"pumpkin_top","bottom":"pumpkin_top","side":"pumpkin_side","front":"carved_pumpkin","facing":"0"}
execute if block ~ ~ ~ carved_pumpkin[facing=south] run function cam:capture/block/texture/multi_side_facing {"top":"pumpkin_top","bottom":"pumpkin_top","side":"pumpkin_side","front":"carved_pumpkin","facing":"1"}
execute if block ~ ~ ~ carved_pumpkin[facing=east] run function cam:capture/block/texture/multi_side_facing {"top":"pumpkin_top","bottom":"pumpkin_top","side":"pumpkin_side","front":"carved_pumpkin","facing":"2"}
execute if block ~ ~ ~ carved_pumpkin[facing=west] run function cam:capture/block/texture/multi_side_facing {"top":"pumpkin_top","bottom":"pumpkin_top","side":"pumpkin_side","front":"carved_pumpkin","facing":"3"}
#rotated uv
execute if block ~ ~ ~ chain_command_block[conditional=false,facing=north] run function cam:capture/block/multi_side {"top":"chain_command_block_side","bottom":"chain_command_block_side","north":"chain_command_block_front","south":"chain_command_block_back","east":"chain_command_block_side","west":"chain_command_block_side"}
execute if block ~ ~ ~ chain_command_block[conditional=false,facing=south] run function cam:capture/block/multi_side {"top":"chain_command_block_side","bottom":"chain_command_block_side","north":"chain_command_block_back","south":"chain_command_block_front","east":"chain_command_block_side","west":"chain_command_block_side"}
execute if block ~ ~ ~ chain_command_block[conditional=false,facing=east] run function cam:capture/block/multi_side {"top":"chain_command_block_side","bottom":"chain_command_block_side","north":"chain_command_block_side","south":"chain_command_block_side","east":"chain_command_block_front","west":"chain_command_block_back"}
execute if block ~ ~ ~ chain_command_block[conditional=false,facing=west] run function cam:capture/block/multi_side {"top":"chain_command_block_side","bottom":"chain_command_block_side","north":"chain_command_block_side","south":"chain_command_block_side","east":"chain_command_block_back","west":"chain_command_block_front"}
execute if block ~ ~ ~ chain_command_block[conditional=false,facing=up] run function cam:capture/block/multi_side {"top":"chain_command_block_front","bottom":"chain_command_block_back","north":"chain_command_block_side","south":"chain_command_block_side","east":"chain_command_block_side","west":"chain_command_block_side"}
execute if block ~ ~ ~ chain_command_block[conditional=false,facing=down] run function cam:capture/block/multi_side {"top":"chain_command_block_back","bottom":"chain_command_block_front","north":"chain_command_block_side","south":"chain_command_block_side","east":"chain_command_block_side","west":"chain_command_block_side"}
execute if block ~ ~ ~ chain_command_block[conditional=true,facing=north] run function cam:capture/block/multi_side {"top":"chain_command_block_conditional","bottom":"chain_command_block_conditional","north":"chain_command_block_front","south":"chain_command_block_back","east":"chain_command_block_conditional","west":"chain_command_block_conditional"}
execute if block ~ ~ ~ chain_command_block[conditional=true,facing=south] run function cam:capture/block/multi_side {"top":"chain_command_block_conditional","bottom":"chain_command_block_conditional","north":"chain_command_block_back","south":"chain_command_block_front","east":"chain_command_block_conditional","west":"chain_command_block_conditional"}
execute if block ~ ~ ~ chain_command_block[conditional=true,facing=east] run function cam:capture/block/multi_side {"top":"chain_command_block_conditional","bottom":"chain_command_block_conditional","north":"chain_command_block_conditional","south":"chain_command_block_conditional","east":"chain_command_block_front","west":"chain_command_block_back"}
execute if block ~ ~ ~ chain_command_block[conditional=true,facing=west] run function cam:capture/block/multi_side {"top":"chain_command_block_conditional","bottom":"chain_command_block_conditional","north":"chain_command_block_conditional","south":"chain_command_block_conditional","east":"chain_command_block_back","west":"chain_command_block_front"}
execute if block ~ ~ ~ chain_command_block[conditional=true,facing=up] run function cam:capture/block/multi_side {"top":"chain_command_block_front","bottom":"chain_command_block_back","north":"chain_command_block_conditional","south":"chain_command_block_conditional","east":"chain_command_block_conditional","west":"chain_command_block_conditional"}
execute if block ~ ~ ~ chain_command_block[conditional=true,facing=down] run function cam:capture/block/multi_side {"top":"chain_command_block_back","bottom":"chain_command_block_front","north":"chain_command_block_conditional","south":"chain_command_block_conditional","east":"chain_command_block_conditional","west":"chain_command_block_conditional"}
# 256 different combinations for this.. wtf mojang?
execute if block ~ ~ ~ chiseled_bookshelf run function cam:capture/block/chiseled_bookshelf
execute if block ~ ~ ~ chiseled_deepslate run function cam:capture/block/texture/chiseled_deepslate
execute if block ~ ~ ~ chiseled_nether_bricks run function cam:capture/block/texture/chiseled_nether_bricks
execute if block ~ ~ ~ chiseled_polished_blackstone run function cam:capture/block/texture/chiseled_polished_blackstone
execute if block ~ ~ ~ chiseled_quartz_block run function cam:capture/block/texture/chiseled_quartz_block
execute if block ~ ~ ~ chiseled_red_sandstone run function cam:capture/block/texture/chiseled_red_sandstone
execute if block ~ ~ ~ chiseled_sandstone run function cam:capture/block/texture/chiseled_sandstone
execute if block ~ ~ ~ chiseled_stone_bricks run function cam:capture/block/texture/chiseled_stone_bricks
execute if block ~ ~ ~ clay run function cam:capture/block/texture/clay
execute if block ~ ~ ~ coal_block run function cam:capture/block/texture/coal_block
execute if block ~ ~ ~ coal_ore run function cam:capture/block/texture/coal_ore
execute if block ~ ~ ~ coarse_dirt run function cam:capture/block/texture/coarse_dirt
execute if block ~ ~ ~ cobbled_deepslate run function cam:capture/block/texture/cobbled_deepslate
execute if block ~ ~ ~ cobblestone run function cam:capture/block/texture/cobblestone
#rotated uv 
execute if block ~ ~ ~ command_block[conditional=false,facing=north] run function cam:capture/block/multi_side {"top":"command_block_side","bottom":"command_block_side","north":"command_block_front","south":"command_block_back","east":"command_block_side","west":"command_block_side"}
execute if block ~ ~ ~ command_block[conditional=false,facing=south] run function cam:capture/block/multi_side {"top":"command_block_side","bottom":"command_block_side","north":"command_block_back","south":"command_block_front","east":"command_block_side","west":"command_block_side"}
execute if block ~ ~ ~ command_block[conditional=false,facing=east] run function cam:capture/block/multi_side {"top":"command_block_side","bottom":"command_block_side","north":"command_block_side","south":"command_block_side","east":"command_block_front","west":"command_block_back"}
execute if block ~ ~ ~ command_block[conditional=false,facing=west] run function cam:capture/block/multi_side {"top":"command_block_side","bottom":"command_block_side","north":"command_block_side","south":"command_block_side","east":"command_block_back","west":"command_block_front"}
execute if block ~ ~ ~ command_block[conditional=false,facing=up] run function cam:capture/block/multi_side {"top":"command_block_front","bottom":"command_block_back","north":"command_block_side","south":"command_block_side","east":"command_block_side","west":"command_block_side"}
execute if block ~ ~ ~ command_block[conditional=false,facing=down] run function cam:capture/block/multi_side {"top":"command_block_back","bottom":"command_block_front","north":"command_block_side","south":"command_block_side","east":"command_block_side","west":"command_block_side"}
execute if block ~ ~ ~ command_block[conditional=true,facing=north] run function cam:capture/block/multi_side {"top":"command_block_conditional","bottom":"command_block_conditional","north":"command_block_front","south":"command_block_back","east":"command_block_conditional","west":"command_block_conditional"}
execute if block ~ ~ ~ command_block[conditional=true,facing=south] run function cam:capture/block/multi_side {"top":"command_block_conditional","bottom":"command_block_conditional","north":"command_block_back","south":"command_block_front","east":"command_block_conditional","west":"command_block_conditional"}
execute if block ~ ~ ~ command_block[conditional=true,facing=east] run function cam:capture/block/multi_side {"top":"command_block_conditional","bottom":"command_block_conditional","north":"command_block_conditional","south":"command_block_conditional","east":"command_block_front","west":"command_block_back"}
execute if block ~ ~ ~ command_block[conditional=true,facing=west] run function cam:capture/block/multi_side {"top":"command_block_conditional","bottom":"command_block_conditional","north":"command_block_conditional","south":"command_block_conditional","east":"command_block_back","west":"command_block_front"}
execute if block ~ ~ ~ command_block[conditional=true,facing=up] run function cam:capture/block/multi_side {"top":"command_block_front","bottom":"command_block_back","north":"command_block_conditional","south":"command_block_conditional","east":"command_block_conditional","west":"command_block_conditional"}
execute if block ~ ~ ~ command_block[conditional=true,facing=down] run function cam:capture/block/multi_side {"top":"command_block_back","bottom":"command_block_front","north":"command_block_conditional","south":"command_block_conditional","east":"command_block_conditional","west":"command_block_conditional"}
execute if block ~ ~ ~ copper_block run function cam:capture/block/texture/copper_block
execute if block ~ ~ ~ copper_ore run function cam:capture/block/texture/copper_ore
execute if block ~ ~ ~ cracked_deepslate_bricks run function cam:capture/block/texture/cracked_deepslate_bricks
execute if block ~ ~ ~ cracked_deepslate_tiles run function cam:capture/block/texture/cracked_deepslate_tiles
execute if block ~ ~ ~ cracked_nether_bricks run function cam:capture/block/texture/cracked_nether_bricks
execute if block ~ ~ ~ cracked_polished_blackstone_bricks run function cam:capture/block/texture/cracked_polished_blackstone_bricks
execute if block ~ ~ ~ cracked_stone_bricks run function cam:capture/block/texture/cracked_stone_bricks
execute if block ~ ~ ~ crafting_table run function cam:capture/block/multi_side {"top":"crafting_table_top","bottom":"oak_planks","north":"crafting_table_front","south":"crafting_table_side","east":"crafting_table_front","west":"crafting_table_side"}
execute if block ~ ~ ~ crimson_hyphae run function cam:capture/block/texture/crimson_stem
execute if block ~ ~ ~ crimson_nylium run function cam:capture/block/multi_side {"top":"crimson_nylium","bottom":"netherrack","north":"crimson_nylium_side","south":"crimson_nylium_side","east":"crimson_nylium_side","west":"crimson_nylium_side"}
execute if block ~ ~ ~ crimson_planks run function cam:capture/block/texture/crimson_planks
execute if block ~ ~ ~ crimson_stem[axis=x] run function cam:capture/block/multi_side_log {"top":"crimson_stem_top","side":"crimson_stem","axis":"1"}
execute if block ~ ~ ~ crimson_stem[axis=y] run function cam:capture/block/multi_side_log {"top":"crimson_stem_top","side":"crimson_stem","axis":"2"}
execute if block ~ ~ ~ crimson_stem[axis=z] run function cam:capture/block/multi_side_log {"top":"crimson_stem_top","side":"crimson_stem","axis":"3"}
execute if block ~ ~ ~ crying_obsidian run function cam:capture/block/texture/crying_obsidian
execute if block ~ ~ ~ cut_copper run function cam:capture/block/texture/cut_copper
execute if block ~ ~ ~ cut_red_sandstone run function cam:capture/block/multi_side {"top":"red_sandstone_top","bottom":"red_sandstone_top","north":"cut_red_sandstone_side","south":"cut_red_sandstone_side","east":"cut_red_sandstone_side","west":"cut_red_sandstone_side"}
execute if block ~ ~ ~ cut_sandstone run function cam:capture/block/multi_side {"top":"sandstone_top","bottom":"sandstone_top","north":"cut_sandstone_side","south":"cut_sandstone_side","east":"cut_sandstone_side","west":"cut_sandstone_side"}
execute if block ~ ~ ~ cyan_concrete run function cam:capture/block/texture/cyan_concrete
execute if block ~ ~ ~ cyan_concrete_powder run function cam:capture/block/texture/cyan_concrete_powder
execute if block ~ ~ ~ cyan_glazed_terracotta run function cam:capture/block/texture/cyan_glazed_terracotta
execute if block ~ ~ ~ cyan_stained_glass run function cam:capture/block/texture/cyan_stained_glass
execute if block ~ ~ ~ cyan_terracotta run function cam:capture/block/texture/cyan_terracotta
execute if block ~ ~ ~ cyan_wool run function cam:capture/block/texture/cyan_wool
