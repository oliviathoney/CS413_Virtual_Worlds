// main function for checking win condition that initiates recursive function
function check_win(){

	// spr_track_start, spr_track_finish, ...
	var start_track = instance_find(obj_track, 0);
	var end_track = instance_find(obj_track, 1);
	
	// set dead end to false so loop can run first time
	var deadEnd = false;
	
	// initialize iterator track to the starting track
	var current_track = start_track;
	
	// initialize prev_direction variable to avoid infinite looping
	var prev_direction = "start";
	
	// main loop for checking continous road from start to finish
	while(!deadEnd && current_track != end_track){
		
		// set dead-end to true by default and overwrite if proven false
		deadEnd = true;
		
		// if current track continues in the down direction and previous 
		// iteration variable wasn't going up so we do not repeat a track
		if(current_track.down && prev_direction != "up"){
			// loop through each track instance
			for (var i = 1; i < instance_number(obj_track); ++i;) {
				with(instance_find(obj_track, i)) {
					// check if track is below current iterator track
					if(id.x == current_track.x && id.y == (current_track.y + 32))
					{
						// if so update iterator track to one found
						current_track = id;
						
						// we found a continuing road so not a dead end
						deadEnd = false;
						
						// store our direction so next iterator will not return to this one
						prev_direction = "down";
					}
				}
			}
		} else if(current_track.up && prev_direction != "down"){
			for (var i = 1; i < instance_number(obj_track); ++i;) {
				with(instance_find(obj_track, i)) {
					if(id.x == current_track.x && id.y == (current_track.y - 32))
					{
						current_track = id;
						deadEnd = false;
						prev_direction = "up";
					}
				}
			}
		} else if(current_track.left && prev_direction != "right"){
			for (var i = 1; i < instance_number(obj_track); ++i;) {
				with(instance_find(obj_track, i)) {
					if(id.x == (current_track.x - 32) && id.y == current_track.y)
					{
						current_track = id;
						deadEnd = false;
						prev_direction = "left";
					}
				}
			}
		} else if(current_track.right && prev_direction != "left"){
			for (var i = 1; i < instance_number(obj_track); ++i;) {
				with(instance_find(obj_track, i)) {
					if(id.x == (current_track.x + 32) && id.y == current_track.y)
					{
						current_track = id;
						deadEnd = false;
						prev_direction = "right";
					}
				}
			}
		}
	}
	
	// if loop ended and no dead-end then assume game is won
	if(!deadEnd){
		room_goto(rm_win);
	}
}