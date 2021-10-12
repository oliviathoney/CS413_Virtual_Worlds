if (!hit){
	audio_play_sound(sound_player_hit, 1, 0);
	health -= 1;
	hit = true;
	counter = 0;
}