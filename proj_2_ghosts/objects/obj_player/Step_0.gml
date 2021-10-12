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

if (place_meeting(x, y, global.doors[0]) || place_meeting(x, y, global.doors[1])){
	change_room = true;
}

if (player_state == player_states.idle){
	if (change_room) {
		sprite_index = spr_ghost_hunter;
		if (current_room == 1){
			current_room = 2;	
			id.x = global.doors[1].x;
			id.y = global.doors[1].y + 32;
		} else if(current_room == 2){
			current_room = 1;
			id.x = global.doors[0].x;
			id.y = global.doors[0].y + 32;
		}
	}
	change_room = false;
}

