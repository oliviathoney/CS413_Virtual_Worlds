// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function queue_display(){
	
	var lyr_track = layer_get_id("Track");
	
	// create queued track instance at top left
	var inst_queued_track = instance_create_layer(
		32, 
		16,
		lyr_track, global.current_track);
	
	// store id of queued track instance so it can be deleted
	global.current_id = inst_queued_track.id;
}