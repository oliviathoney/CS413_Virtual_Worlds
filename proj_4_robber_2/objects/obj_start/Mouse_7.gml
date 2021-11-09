sprite_index = spr_start;
audio_play_sound(sound_click_out, 1, 0);
clicked = false;

TweenEasyMove(x, y, room_width + 64, y, 10, 30, EaseInCubic);


with(instance_find(obj_help, 0)) {
	TweenEasyMove(x, y, room_width + 64, y, 5, 30, EaseInCubic);
}

alarm[0] = room_speed*0.5;
