// handles the creation of a track after placed
function create_track(xpos, ypos, sprite){
	
	// get track layer and queued track piece
	var lyr_track = layer_get_id("Track");
	var inst_track = instance_create_layer(xpos, ypos, lyr_track, obj_track);
	
	// set sprite of track given
	with (inst_track) {
		sprite_index = sprite;
	}
	
	// initialize directions this tracks points to, to all false
	inst_track.left = false;
	inst_track.right = false;
	inst_track.up = false;
	inst_track.down = false;
	
	var sprite_name = string(sprite_get_name(inst_track.sprite_index));
	
	// update depending on sprite which directions this track faces
	if(sprite_name == "spr_track_horizontal" || sprite_name == "spr_track_bridge" ){
		inst_track.left = true;
		inst_track.right = true;
	} else if(sprite_name == "spr_track_vertical"){
		inst_track.up = true;
		inst_track.down = true;
	} else if(sprite_name == "spr_track_curve1"){
		inst_track.left = true;
		inst_track.down = true;
	} else if(sprite_name == "spr_track_curve2"){
		inst_track.up = true;
		inst_track.left = true;
	} else if(sprite_name == "spr_track_curve3"){
		inst_track.up = true;
		inst_track.right = true;
	} else if(sprite_name == "spr_track_curve4"){
		inst_track.right = true;
		inst_track.down = true;
	} else if(sprite_name == "spr_track_start"){
		inst_track.down = true;
	} else if(sprite_name == "spr_track_finish"){
		inst_track.left = true;
	}
}