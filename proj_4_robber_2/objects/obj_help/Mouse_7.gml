sprite_index = spr_help;
audio_play_sound(sound_click_out, 1, 0);
clicked = false;

with(instance_find(obj_instructions, 0)) {
	TweenEasyMove(x, y, x, 16, 0, 45, EaseOutCubic);
}