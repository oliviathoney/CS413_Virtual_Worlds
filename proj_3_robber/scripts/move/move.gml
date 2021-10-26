function move(pos){
	
	var dy = 0;
	
	if(pos == player_positions.down && global.player_position == player_positions.up){
		global.player_position = player_positions.down;
		dy = +1;
	} else if(pos == player_positions.up && global.player_position == player_positions.down){
		global.player_position = player_positions.up;
		dy = -1;
	}
	
	y_start = y_pos;
	
	y_end = y_pos + dy;
	
	y_pos = y_end;
	
	global.player_state = player_states.moving;
}