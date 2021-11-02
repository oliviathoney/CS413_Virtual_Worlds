// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function win_sequence(){
	sprite_index = noone;
	var inst_getaway_car = instance_find(obj_getaway_car, 0);
	with(inst_getaway_car) {
		TweenEasyMove(x, y, room_width + camera_get_view_width(view_camera[0]), y, 5, 60, EaseInSine);
	}
	
	if(global.timeAfterWin == -1) {	
		global.timeAfterWin = room_speed * 1;
	}
}