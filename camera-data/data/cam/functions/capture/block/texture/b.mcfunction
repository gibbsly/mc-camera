execute if block ~ ~ ~ bamboo_block[axis=x] run function cam:capture/block/multi_side_log {"top":"bamboo_block_top","side":"bamboo_block","axis":"1"}
execute if block ~ ~ ~ bamboo_block[axis=y] run function cam:capture/block/multi_side_log {"top":"bamboo_block_top","side":"bamboo_block","axis":"2"}
execute if block ~ ~ ~ bamboo_block[axis=z] run function cam:capture/block/multi_side_log {"top":"bamboo_block_top","side":"bamboo_block","axis":"3"}
#barrel is unique, it goes ALL directions, so no multi_side_facing
execute if block ~ ~ ~ barrel[open=false,facing=up] run function cam:capture/block/multi_side {"top":"barrel_top","bottom":"barrel_bottom","north":"barrel_side","south":"barrel_side","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=false,facing=down] run function cam:capture/block/multi_side {"top":"barrel_bottom","bottom":"barrel_top","north":"barrel_side","south":"barrel_side","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=false,facing=north] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_top","south":"barrel_bottom","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=false,facing=south] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_bottom","south":"barrel_top","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=false,facing=east] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_side","south":"barrel_side","east":"barrel_top","west":"barrel_bottom"}
execute if block ~ ~ ~ barrel[open=false,facing=west] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_side","south":"barrel_side","east":"barrel_bottom","west":"barrel_top"}
execute if block ~ ~ ~ barrel[open=true,facing=up] run function cam:capture/block/multi_side {"top":"barrel_top_open","bottom":"barrel_bottom","north":"barrel_side","south":"barrel_side","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=true,facing=down] run function cam:capture/block/multi_side {"top":"barrel_bottom","bottom":"barrel_top_open","north":"barrel_side","south":"barrel_side","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=true,facing=north] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_top_open","south":"barrel_bottom","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=true,facing=south] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_bottom","south":"barrel_top_open","east":"barrel_side","west":"barrel_side"}
execute if block ~ ~ ~ barrel[open=true,facing=east] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_side","south":"barrel_side","east":"barrel_top_open","west":"barrel_bottom"}
execute if block ~ ~ ~ barrel[open=true,facing=west] run function cam:capture/block/multi_side {"top":"barrel_side","bottom":"barrel_side","north":"barrel_side","south":"barrel_side","east":"barrel_bottom","west":"barrel_top_open"}
# execute if block ~ ~ ~ barrier run function cam:capture/block/texture/barrier # WHY??
execute if block ~ ~ ~ basalt[axis=x] run function cam:capture/block/multi_side_log {"top":"basalt_top","side":"basalt_side","axis":"1"}
execute if block ~ ~ ~ basalt[axis=y] run function cam:capture/block/multi_side_log {"top":"basalt_top","side":"basalt_side","axis":"2"}
execute if block ~ ~ ~ basalt[axis=z] run function cam:capture/block/multi_side_log {"top":"basalt_top","side":"basalt_side","axis":"3"}
execute if block ~ ~ ~ beacon run function cam:capture/block/texture/beacon
execute if block ~ ~ ~ bedrock run function cam:capture/block/texture/bedrock
execute if block ~ ~ ~ bee_nest[facing=north] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front","facing":"0"} 
execute if block ~ ~ ~ bee_nest[facing=south] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front","facing":"1"} 
execute if block ~ ~ ~ bee_nest[facing=east] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front","facing":"2"} 
execute if block ~ ~ ~ bee_nest[facing=west] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front","facing":"3"} 
execute if block ~ ~ ~ bee_nest[honey_level=5,facing=north] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front_honey","facing":"0"} 
execute if block ~ ~ ~ bee_nest[honey_level=5,facing=south] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front_honey","facing":"1"} 
execute if block ~ ~ ~ bee_nest[honey_level=5,facing=east] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front_honey","facing":"2"} 
execute if block ~ ~ ~ bee_nest[honey_level=5,facing=west] run function cam:capture/block/multi_side_facing {"top":"bee_nest_top","bottom":"bee_nest_bottom","side":"bee_nest_side","front":"bee_nest_front_honey","facing":"3"} 
execute if block ~ ~ ~ beehive run function cam:capture/block/multi_side_facing {"top":""}
execute if block ~ ~ ~ birch_leaves run function cam:capture/block/texture/birch_leaves
execute if block ~ ~ ~ birch_log[axis=x] run function cam:capture/block/multi_side_log {"top":"birch_log_top","side":"birch_log","axis":"1"}
execute if block ~ ~ ~ birch_log[axis=y] run function cam:capture/block/multi_side_log {"top":"birch_log_top","side":"birch_log","axis":"2"}
execute if block ~ ~ ~ birch_log[axis=z] run function cam:capture/block/multi_side_log {"top":"birch_log_top","side":"birch_log","axis":"3"}
execute if block ~ ~ ~ birch_planks run function cam:capture/block/texture/birch_planks
execute if block ~ ~ ~ birch_wood run function cam:capture/block/texture/birch_log
execute if block ~ ~ ~ black_concrete run function cam:capture/block/texture/black_concrete
execute if block ~ ~ ~ black_concrete_powder run function cam:capture/block/texture/black_concrete_powder
# We will get back to you later...
execute if block ~ ~ ~ black_glazed_terracotta run function cam:capture/block/texture/black_glazed_terracotta
execute if block ~ ~ ~ black_stained_glass run function cam:capture/block/texture/black_stained_glass
execute if block ~ ~ ~ black_terracotta run function cam:capture/block/texture/black_terracotta
execute if block ~ ~ ~ black_wool run function cam:capture/block/texture/black_wool
execute if block ~ ~ ~ blackstone run function cam:capture/block/texture/blackstone
execute if block ~ ~ ~ blast_furnace[lit=false,facing=north] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front","facing":"0"}
execute if block ~ ~ ~ blast_furnace[lit=false,facing=south] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front","facing":"1"}
execute if block ~ ~ ~ blast_furnace[lit=false,facing=east] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front","facing":"2"}
execute if block ~ ~ ~ blast_furnace[lit=false,facing=west] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front","facing":"3"}
execute if block ~ ~ ~ blast_furnace[lit=true,facing=north] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front_on","facing":"0"}
execute if block ~ ~ ~ blast_furnace[lit=true,facing=south] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front_on","facing":"1"}
execute if block ~ ~ ~ blast_furnace[lit=true,facing=east] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front_on","facing":"2"}
execute if block ~ ~ ~ blast_furnace[lit=true,facing=west] run function cam:capture/block/texture/multi_side_facing {"top":"blast_furnace_top","bottom":"blast_furnace_top","side":"blast_furnace_side","front":"blast_furnace_front_on","facing":"3"}
execute if block ~ ~ ~ blue_concrete run function cam:capture/block/texture/blue_concrete
execute if block ~ ~ ~ blue_concrete_powder run function cam:capture/block/texture/blue_concrete_powder
execute if block ~ ~ ~ blue_glazed_terracotta run function cam:capture/block/texture/blue_glazed_terracotta
execute if block ~ ~ ~ blue_ice run function cam:capture/block/texture/blue_ice
# Noting here for gibbs when we figure out caustics
execute if block ~ ~ ~ blue_stained_glass run function cam:capture/block/texture/blue_stained_glass
execute if block ~ ~ ~ blue_terracotta run function cam:capture/block/texture/blue_terracotta
execute if block ~ ~ ~ blue_wool run function cam:capture/block/texture/blue_wool
execute if block ~ ~ ~ bone_block[axis=x] run function cam:capture/block/multi_side_log {"top":"bone_block_top","side":"bone_block_side","axis":"1"}
execute if block ~ ~ ~ bone_block[axis=y] run function cam:capture/block/multi_side_log {"top":"bone_block_top","side":"bone_block_side","axis":"2"}
execute if block ~ ~ ~ bone_block[axis=z] run function cam:capture/block/multi_side_log {"top":"bone_block_top","side":"bone_block_side","axis":"3"}
execute if block ~ ~ ~ bookshelf run function cam:capture/block/texture/bookshelf
execute if block ~ ~ ~ brain_coral_block run function cam:capture/block/texture/brain_coral_block
execute if block ~ ~ ~ bricks run function cam:capture/block/texture/bricks
execute if block ~ ~ ~ brown_concrete run function cam:capture/block/texture/brown_concrete
execute if block ~ ~ ~ brown_concrete_powder run function cam:capture/block/texture/brown_concrete_powder
# Rotated UVs...
execute if block ~ ~ ~ brown_glazed_terracotta run function cam:capture/block/texture/brown_glazed_terracotta
execute if block ~ ~ ~ brown_mushroom_block run function cam:capture/block/texture/brown_mushroom_block
# Noting here for gibbs when we figure out caustics
execute if block ~ ~ ~ brown_stained_glass run function cam:capture/block/texture/brown_stained_glass
execute if block ~ ~ ~ brown_terracotta run function cam:capture/block/texture/brown_terracotta
execute if block ~ ~ ~ brown_wool run function cam:capture/block/texture/brown_wool
execute if block ~ ~ ~ bubble_coral_block run function cam:capture/block/texture/bubble_coral_block
