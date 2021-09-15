// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_track(xpos, ypos, sprite){
	// get track layer and queued track piece
	var lyr_track = layer_get_id("Track");
	var inst_track = instance_create_layer(xpos, ypos, lyr_track, obj_track);
	with (inst_track) {
		sprite_index = sprite;
	}
	
	inst_track.left = false;
	inst_track.right = false;
	inst_track.up = false;
	inst_track.down = false;
	
	if(sprite == spr_track_horizontal || spr_track_bridge ){
		inst_track.left = true;
		inst_track.right = true;
	} else if(sprite == spr_track_vertical){
		inst_track.up = true;
		inst_track.down = true;
	} else if(sprite == spr_track_curve1){
		inst_track.left = true;
		inst_track.down = true;
	} else if(sprite == spr_track_curve2){
		inst_track.up = true;
		inst_track.left = true;
	} else if(sprite == spr_track_curve3){
		inst_track.up = true;
		inst_track.right = true;
	} else if(sprite == spr_track_curve4){
		inst_track.right = true;
		inst_track.down = true;
	}
}