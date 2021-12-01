key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);


if( keyboard_check_pressed(vk_left) ) {
	sprite_index = spr_robber_running_left;
}
if( keyboard_check_pressed(vk_right) ) {
	sprite_index = spr_robber_running;
}

var _move = key_right - key_left;

hspd = _move * walkspd;

vspd = vspd + grv;

if(place_meeting(x, y+1, obj_platform)) && (key_jump) {
	sprite_index = spr_robber_jumping
	vspd = -jumpspd;
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

