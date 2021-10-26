// process player movement given up or down direction
function move(pos){
	
	// check if currently moving or jumping so user cannot move too quickly
	if (global.player_state != player_states.running){
		return;	
	}
	
	// initialize y direction variable
	var dy = 0;
	
	// if inputs down
	if(pos == player_positions.down){
		
		// if on sidewalk
		if(global.player_position == player_positions.up){
			global.player_position = player_positions.middle;
			dy = +1;
		}
		
		// if in middle of road
		else if(global.player_position == player_positions.middle){
			global.player_position = player_positions.down;
			dy = +1;
		}
		
		// else not a valid movement option so do nothing
		
	}
	
	// if inputs up
	else if(pos == player_positions.up){

		// if player on bottom road
		if(global.player_position == player_positions.down){
			global.player_position = player_positions.middle;
			dy = -1;
		}
		
		// if player in middle of road
		else if(global.player_position == player_positions.middle){
			global.player_position = player_positions.up;
			dy = -1;
		}
		
		// else not a valid movement option so do nothing
	}
	
	// update y vals
	y_start = y_pos;
	y_end = y_pos + dy;
	y_pos = y_end;
	
	// set state to moving lanes
	global.player_state = player_states.moving;
}