// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_track(grass){
	if (grass == noone) return;
	with (grass){
		// if grass already has track return from function
		if (grass.hasTrack) return;
		
		//var track = queuePop(track_queue);
		
		// temp testing variable
		var track_spr = global.current_track;
		
		create_track(grass.xpos, grass.ypos, track_spr);
		
		global.current_track = global.next_track;
		// global.current_track = global.tracks_possible[irandom(7)];
		global.next_track = global.tracks_possible[irandom(7)];
		queue_display();
		
		// update grass piece's status to have a track on it
		grass.hasTrack = true;
	}
	check_win();
}