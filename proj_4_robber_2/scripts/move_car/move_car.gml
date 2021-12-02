// process player movement given up or down direction
function move_car(pos){
	
	// check if currently moving or jumping so user cannot move too quickly
	if (global.player_state != player_states.running){
		return;	
	}
	
	// initialize y direction variable
	var dy = 0;
	
	// if inputs down
	if(pos == player_positions.down){
		
		if(global.player_position == car_positions.top_up){
			global.player_position = car_positions.top_down;
			dy = +1;
		}
		
		else if(global.player_position == car_positions.top_down){
			global.player_position = car_positions.bot_up;
			dy = +1;
		}
		
		else if(global.player_position == car_positions.bot_up){
			global.player_position = car_positions.bot_mid;
			dy = +1;
		}
		
		else if(global.player_position == car_positions.bot_mid){
			global.player_position = car_positions.bot_down;
			dy = +1;
		}
		
		// else not a valid movement option so do nothing
		
	}
	
	// if inputs up
	else if(pos == player_positions.up){

		if(global.player_position == car_positions.bot_down){
			global.player_position = car_positions.bot_mid;
			dy = -1;
		}
		
		else if(global.player_position == car_positions.bot_mid){
			global.player_position = car_positions.bot_up;
			dy = -1;
		}
		
		else if(global.player_position == car_positions.bot_up){
			global.player_position = car_positions.top_down;
			dy = -1;
		}
		
		else if(global.player_position == car_positions.top_down){
			global.player_position = car_positions.top_up;
			dy = -1;
		}
		
		// else not a valid movement option so do nothing
	}
	
	// update y vals
	y_start = y_pos;
	y_end = y_pos + dy * global.move_modifier;
	y_pos = y_end;
	
	// set state to moving lanes
	global.player_state = player_states.moving;
}