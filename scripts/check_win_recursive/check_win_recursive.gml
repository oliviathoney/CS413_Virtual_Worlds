// recursively check if a win condition is reached
function check_win_recursive(current_track, end_track, road_dir){
	
	// start connected to end
	if(current_track == end_track){
		return true;
	}
	
	var _x = current_track.x;
	var _y = current_track.y;
	show_debug_message("current track: " + sprite_get_name(current_track.sprite_index));
	show_debug_message("x: " + string(_x));
	show_debug_message("y: " + string(_y) + "\n");
	show_debug_message("up: " + string(current_track.up));
	show_debug_message("down: " + string(current_track.down));
	show_debug_message("left: " + string(current_track.left));
	show_debug_message("right: " + string(current_track.right) + "\n");
	
	// check to make sure current road piece connects to previous piece
	if(road_dir = "down"){
		if(!current_track.up){
			return false;
		}
	} else if (road_dir = "up"){
		if(!current_track.down){
			return false;
		}
	} else if (road_dir = "left"){
		if(!current_track.right){
			return false;
		}
	} else if (road_dir = "right"){
		if(!current_track.left){
			return false;
		}
	}
	
	// variables for field measurements
	var field_width = 10;
	var field_height = 8;
	var field_x_start = 16;
	var field_y_start = 64;
	var grass_width = 32;
	
	// recurse through valid track directions from current track
	var down = false;
	var up = false;
	var left = false;
	var right = false;
	
	// current track connects downward
	if(current_track.down){
		
		// check if track is on bottom of board
		//if current_track.y >= (field_height - 1) * grass_width + field_y_start){down = false;}
		
		for (var i = 0; i < instance_number(obj_track); ++i;) {
			with(instance_find(obj_track, i)) {
				show_debug_message("\ndown loop: " + sprite_get_name(id.sprite_index));
				show_debug_message("y: " + string(id.y));
				show_debug_message("current_track.y + grass_width: " + string(current_track.y + grass_width) + "\n");
				if(id.x == current_track.x && id.y == (current_track.y + grass_width))
				{
					// vertical piece found
					if(id.down){
						down = check_win_recursive(id, end_track, "down");
					} 
					// curve2 found
					else if(id.left){
						down = check_win_recursive(id, end_track, "down");
					}
					// curve3 found
					else if(id.right){
						down = check_win_recursive(id, end_track, "down");
					}
				}
			}
			if(down){
				return true;
			}
		}
	} 
	// current track connects upward
	else if(current_track.up){
		for (var i = 0; i < instance_number(obj_track); ++i;) {
			with(instance_find(obj_track, i)) {
				if(id.x == current_track.x && id.y == (current_track.y - grass_width))
				{
					// vertical piece found
					if(id.up){
						up = check_win_recursive(id, end_track, "up");
					} 
					// curve1 found
					else if(id.left){
						up = check_win_recursive(id, end_track, "up");
					}
					// curve4 found
					else if(id.right){
						up = check_win_recursive(id, end_track, "up");
					}
				}
			}
			if(up){
				return true;
			}
		}
	}
	// current track connects leftward
	else if(current_track.left){
		for (var i = 0; i < instance_number(obj_track); ++i;) {
			with(instance_find(obj_track, i)) {
				if(id.x == (current_track.x - grass_width) && id.y == current_track.y)
				{
					// horiztonal piece found
					if(id.left){
						left = check_win_recursive(id, end_track, "left");
					} 
					// curve3 found
					else if(id.up){
						left = check_win_recursive(id, end_track, "left");
					}
					// curve4 found
					else if(id.down){
						left = check_win_recursive(id, end_track, "left");
					}
				}
			}
			if(left){
				return true;
			}
		}
	}
	// current track connects rightward
	else if(current_track.right){
		for (var i = 1; i < instance_number(obj_track); ++i;) {
			with(instance_find(obj_track, i)) {
				if(id.x == (current_track.x + grass_width) && id.y == current_track.y)
				{
					// horiztonal piece found
					if(id.right){
						right = check_win_recursive(id, end_track, "right");
					} 
					// curve2 found
					else if(id.up){
						right = check_win_recursive(id, end_track, "right");
					}
					// curve1 found
					else if(id.down){
						right = check_win_recursive(id, end_track, "right");
					}
				}
			}
			if(right){
				return true;
			}
		}
	}
	
	// if one of the directions returns a valid path then path completed otherwise there exists no valid path from here
	return false;
}