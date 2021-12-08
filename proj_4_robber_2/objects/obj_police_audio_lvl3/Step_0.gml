if(counter <= 0){
	if(sound_id == 0){
		audio_play_sound(sound_surrounded, 1, 0);
	} else {
		audio_play_sound(sound_hands_up, 1, 0);
	}
	counter = irandom_range(300, 600);
	sound_id = irandom_range(0, 1);
} else {
	counter--;
}