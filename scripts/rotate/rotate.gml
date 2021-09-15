// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rotate(){
	if(global.current_track == spr_track_horizontal){
		global.current_track = spr_track_vertical;
	} else if(global.current_track == spr_track_vertical){
		global.current_track = spr_track_horizontal;
	} else if(global.current_track == spr_track_curve1){
		global.current_track = spr_track_curve2;
	} else if(global.current_track == spr_track_curve2){
		global.current_track = spr_track_curve3;
	} else if(global.current_track == spr_track_curve3){
		global.current_track = spr_track_curve4;
	} else if(global.current_track == spr_track_curve4){
		global.current_track = spr_track_curve1;
	}

	queue_display();
}