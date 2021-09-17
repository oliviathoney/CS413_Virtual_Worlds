// updates the track queue in the top left
function queue_display(){
	
	// displays the current track to be placed
	with(global.queued_track){
		sprite_index = global.current_track;
	}
	
	// displays the queue to be placed after current
	with(global.queued_next){
		sprite_index = global.next_track;
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
}