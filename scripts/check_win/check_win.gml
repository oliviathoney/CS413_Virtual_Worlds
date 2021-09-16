// main function for checking win condition that initiates recursive function
function check_win(){
	// get objects in order of which they were added
	// spr_track_start, spr_track_finish, ...
	var start_track = instance_find(obj_track, 0);
	var end_track = instance_find(obj_track, 1);
	
	// for (var i = 0; i < instance_number(obj_track); ++i;) {
	// 	with(instance_find(obj_track, i)) {
	// 		show_debug_message(sprite_get_name(sprite_index));
	// 	}
	// }
	
	if(check_win_recursive(start_track, end_track, "start")){
		show_debug_message("WIN");
	} else {
		show_debug_message("Not winning.\n");
	}
}