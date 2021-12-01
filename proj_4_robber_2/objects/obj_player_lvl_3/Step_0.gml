/// @description handles sprite image updates per movement
if( keyboard_check_pressed(vk_space) ) {
	sprite_index = spr_robber_jumping;
	jumping = true;
}

if( keyboard_check_direct(vk_left) ) {
	sprite_index = spr_robber_running;
	if( image_xscale > 0 ) {
		image_xscale = -image_xscale;
	}
}
if( keyboard_check_direct(vk_right) ) {
	sprite_index = spr_robber_running;
	if( image_xscale < 0 ) {
		image_xscale = -image_xscale;
	}
}
if( keyboard_check_pressed(vk_down) ) {
	sprite_index = spr_robber;
}
