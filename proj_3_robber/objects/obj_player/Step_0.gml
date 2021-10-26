counter -= 1;

if(counter < 1){
	x += player_speed;
}

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