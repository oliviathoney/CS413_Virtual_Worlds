/// @description handles sprite image updates per movement
if( keyboard_check_pressed(vk_space) ) {
	sprite_index = spr_robber_jumping;
	jumping = true;
}

if( keyboard_check_direct(vk_left) ) {
	if( image_xscale > 0 ) {
		image_xscale = -image_xscale;
	}
	sprite_index = spr_robber_running;
}
if( keyboard_check_direct(vk_right) ) {
	if( image_xscale < 0 ) {
		image_xscale = -image_xscale;
	}
	sprite_index = spr_robber_running;
}
if( keyboard_check_pressed(vk_down) ) {
	sprite_index = spr_robber;
}
