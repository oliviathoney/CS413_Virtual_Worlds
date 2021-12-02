// process player collisions
function hit_car(){
	
	audio_play_sound(sound_hit_car, 1, 0);
	
	// change user speed state
	decrease_speed_car();
	decrease_speed_car();
	
}