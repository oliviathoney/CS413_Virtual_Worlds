// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_track(grass){
	if (grass == noone) return;
	with (grass){
		// if grass already has track return from function
		if (grass.hasTrack) return;
		
		// get track layer and queued track piece
		var lyr_track = layer_get_id("Track");
		//var track = queuePop(track_queue);
		
		// temp testing variable
		var track = global.current_track;
		
		global.current_track = global.tracks_possible[irandom(7)];
		
		instance_destroy(global.current_id);
		queue_display();
		
		// place track piece on layer
		var inst_track = instance_create_layer(
			grass.xpos, grass.ypos, lyr_track, track);
		
		// update grass piece's status to have a track on it
		grass.hasTrack = true;
	}
}