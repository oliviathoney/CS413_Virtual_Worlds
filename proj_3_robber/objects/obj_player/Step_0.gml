// check for game start
start_counter -= 1;
if(start_counter > 0){
	return;
}

// set speed values for each speed level
if(global.player_speed == player_speeds.fastest) {
	player_speed = 8;
} else if(global.player_speed == player_speeds.faster) {
	player_speed = 6;
} else if(global.player_speed == player_speeds.start_speed) {
	player_speed = 4;
} else if(global.player_speed == player_speeds.slower) {
	player_speed = 2;
} else if(global.player_speed == player_speeds.slowest) {
	player_speed = 1;
}

// move player by x speed
x += player_speed;

// conduct vertical movement
if (global.player_state == player_states.moving){
	
	walk_time += delta_time / 1000000;
	
	var curr_time = walk_time / walk_length;
	
	if (curr_time >= 1) {
		curr_time = 1;
		
		walk_time = 0;
		global.player_state = player_states.running;
	}
	
	var _y = lerp(y_start, y_end, curr_time);
	
	y = _y * tile_width;
}