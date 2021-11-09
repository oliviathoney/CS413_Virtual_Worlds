sprite_index = spr_play_again;
audio_play_sound(sound_click_out, 1, 0);
clicked = false;
audio_stop_sound(sound_theme);
room_goto(rm_game);