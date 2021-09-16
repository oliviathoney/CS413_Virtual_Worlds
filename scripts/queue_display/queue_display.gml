// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function queue_display(){
	with(global.queued_track){
		sprite_index = global.current_track;
	}
	
	with(global.queued_next){
		sprite_index = global.next_track;
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
	
}