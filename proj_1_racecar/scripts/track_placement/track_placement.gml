// handles placement of tracks 
function place_track(grass){
	
	// fixes possibility of calling on an invalid grass block
	if (grass == noone) return;
	
	with (grass){
		
		// if grass already has track return from function
		if (grass.hasTrack) return;
		
		// creates track on clicked tile
		create_track(grass.xpos, grass.ypos, global.current_track);
		
		// updates the track queue
		global.current_track = global.next_track;
		global.next_track = global.tracks_possible[irandom(7)];
		queue_display();
		
		// update grass piece's status to have a track on it
		grass.hasTrack = true;
	}
	
	// check possible win with new tile placed
	check_win();
}