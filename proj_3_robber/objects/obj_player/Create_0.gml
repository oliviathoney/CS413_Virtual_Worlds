// init positions
y_pos = y div tile_width;
y_start = y_pos;
y_end = y_pos;
global.player_x = x;

// init states
global.player_position = player_positions.middle;
global.player_state = player_states.running;
global.player_speed = player_speeds.start_speed;
global.player_collided = false;
global.timeAfterWin = -1;

// init movement vals
player_speed = 3;
walk_length = 0.25;
walk_time = 0;
jump_height = y_start - 40;

// counters
global.start_counter = 60;
speed_counter = 360;
collision_counter = 0;

started = false;