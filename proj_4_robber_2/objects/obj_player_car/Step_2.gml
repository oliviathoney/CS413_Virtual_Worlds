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
	hit_car();
	sprite_index = spr_getaway_car_player_damaged;
	health -= 1;
	
	// reset counters
	collision_counter = 60;	
	global.player_collided = false;
} else {global.player_collided = false;}

collision_counter -= 1;

if (health <= 0){
	audio_stop_sound(sound_car);

	global.player_state = player_states.caught;

	player_speed = 0;
}
