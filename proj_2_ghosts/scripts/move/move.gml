function move(direc){
	
	var dx = 0;
	var dy = 0;
	
	if(direc == move_direction.left){
		dx = -1;
	} else if(direc == move_direction.right){
		dx = 1;
	} else if(direc == move_direction.up){
		dy = -1;
	} else if(direc == move_direction.down){
		dy = 1;
	}
	
	if (player_state == player_states.idle) {
		
		if (!(tilemap_get(tm_colliders, x_pos + dx, y_pos + dy))){
			x_start = x_pos;
			y_start = y_pos;
	
			x_end = x_pos + dx;
			y_end = y_pos + dy;
	
			x_pos = x_end;
			y_pos = y_end;
	
			player_state = player_states.walking;
		}
	}
}

