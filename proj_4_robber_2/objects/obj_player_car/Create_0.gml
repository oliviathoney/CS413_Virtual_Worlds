// init positions
y_pos = y div tile_width;
y_start = y_pos;
y_end = y_pos;
global.player_x = x;
global.move_modifier = 3;
health = 2;
sprite_index = spr_getaway_car_player;

// init states
global.player_position = car_positions.bot_mid;
global.player_state = player_states.running;
global.player_speed = player_speeds.start_speed;
global.player_collided = false;
global.timeAfterWin = -1;

// init movement vals
player_speed = 4;
walk_length = 0.5;
walk_time = 0;
jump_height = y_start - 40;

// counters
collision_counter = 0;

started = false;