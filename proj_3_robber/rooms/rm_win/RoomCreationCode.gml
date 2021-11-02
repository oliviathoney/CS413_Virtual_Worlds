var inst_getaway_car = instance_find(obj_getaway_car, 0);

with(inst_getaway_car) {
	TweenEasyMove(x, y, room_width + 256, y, 5, room_speed*4, EaseInOutCubic);
}

for(var i = 0; i < instance_number(obj_police); i+=1;) {
	with(instance_find(obj_police, i)){
		TweenEasyMove(x, y, room_width + 64, y, 5*(i+1), room_speed*4, EaseInOutCubic);
	}
}

with(instance_find(obj_play_again, 0)) {
	TweenEasyMove(x, y, 544, 384, 20, room_speed*4, EaseInCubic);
}

with(instance_find(obj_exit, 0)) {
	TweenEasyMove(x, y, 64, 384, 20, room_speed*4, EaseInCubic);
}