// process player collisions
function hit_obstacle(){
	
	// change user speed state
	if(global.player_speed == player_speeds.fastest){
		global.player_speed = player_speeds.faster;
	} else if(global.player_speed == player_speeds.faster){
		global.player_speed = player_speeds.start_speed;
	} else if(global.player_speed == player_speeds.start_speed){
		global.player_speed = player_speeds.slower;
	} else if(global.player_speed == player_speeds.slower){
		global.player_speed = player_speeds.slowest;
	}
	
}