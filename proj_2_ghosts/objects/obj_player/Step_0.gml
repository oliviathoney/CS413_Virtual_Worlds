/// @description Handle Player Movement

if (player_state == player_states.walking){
	
	walk_time += delta_time / 1000000;
	
	var curr_time = walk_time / walk_length;
	
	if (curr_time >= 1) {
		curr_time = 1;
		
		walk_time = 0;
		player_state = player_states.idle;
	}
	
	var _x = lerp(x_start, x_end, curr_time);
	var _y = lerp(y_start, y_end, curr_time);
	
	x = _x * tile_width;
	y = _y * tile_width;
} else {
	sprite_index = next_spr;	
}

// counter resetting every 240 frames so the player can get hit again
if (counter == 60) {
	counter = 0;
	hit = false;
}
counter++;

if (door_counter > 0) {
	door_counter--;	
}