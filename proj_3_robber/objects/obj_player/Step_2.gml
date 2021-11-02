// manage camera position
var view_width = camera_get_view_width(view_camera[0]);
var vx = camera_get_view_x(view_camera[0]);
var offset = 392;

if ((x - view_width/2 + offset) < room_width - 1024) {
	camera_set_view_pos(view_camera[0],
						x - view_width/2 + offset,
						0);
} else {
	camera_set_view_pos(view_camera[0],
						room_width - 1024,
						0);
}



// check if player should increase speed

// check for speed conditions
if (collision_counter <= 0 && global.player_collided == true) {
	hit_obstacle();
	
	// reset counters
	speed_counter = 360;
	collision_counter = 60;	
	global.player_collided = false;
} else {global.player_collided = false;}

if (speed_counter <= 0){
	increase_speed();
	speed_counter = 360;
}
speed_counter -= 1;
collision_counter -= 1;