key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

if(hspd == 0 && !jumping){
	sprite_index = spr_robber_lv3;
} else if(hspd < 0){
	sprite_index = spr_robber_running_lvl3_left;
	facing_right = false;
} else if(hspd > 0){
	sprite_index = spr_robber_running_lvl3_right;
	facing_right = true;
}

if(jumping){
	sprite_index = spr_robber_jumping;
	audio_play_sound(sound_jump, 0, 0);
}

var _move = key_right - key_left;

hspd = _move * walkspd;

vspd = vspd + grv;

jumping = false;
if(place_meeting(x, y+1, obj_platform)) && (key_jump) {
	sprite_index = spr_robber_jumping
	vspd = -jumpspd;
	jumping = true;
}

if(place_meeting(x + hspd, y, obj_platform)) {
	while(!place_meeting(x + sign(hspd), y, obj_platform)) {
		x = x + sign(hspd);
	}
	hspd = 0;
}

x = x + hspd;

if(place_meeting(x, y + vspd, obj_platform)) {
	while(!place_meeting(x, y + sign(vspd), obj_platform)) {
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;

