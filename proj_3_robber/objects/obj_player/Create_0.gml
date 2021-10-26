y_pos = y div tile_width;
y_start = y_pos;
y_end = y_pos;

global.player_position = player_positions.up;
global.player_state = player_states.running;

walk_length = 0.25;
walk_time = 0;

player_speed = 3;

// counter for game to begin
counter = 60;