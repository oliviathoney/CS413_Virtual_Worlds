// init positions
y_pos = y div tile_width;
y_start = y_pos;
y_end = y_pos;
global.player_x = x;

// init movement vals
player_speed = 3;

// counters
global.start_counter = 60;
speed_counter = 360;
collision_counter = 0;

started = false;
