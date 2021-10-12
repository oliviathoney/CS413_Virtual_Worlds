/// @description Initialize Player


// player sprite information
sprite_index = spr_ghost_hunter;
next_spr = sprite_index;


// current state of players movement
player_state = player_states.idle;


// player position variables
x_pos = x div tile_width;
y_pos = y div tile_width;

x_start = x_pos;
y_start = y_pos;

x_end = x_pos;
y_end = y_pos;


// walking speed/animation variables
walk_length = 0.5;
walk_time = 0;


// collision detection
tm_colliders = layer_tilemap_get_id("tilemap_colliders");


// initialize player stats
health = 3;
hit = false;
counter = 0;
