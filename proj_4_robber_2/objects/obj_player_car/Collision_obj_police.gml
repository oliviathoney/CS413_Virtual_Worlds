audio_stop_sound(sound_steps);
audio_stop_sound(sound_siren);

global.player_state = player_states.caught;

player_speed = 0;
sprite_index = spr_robber;
other.car_speed = 0;
