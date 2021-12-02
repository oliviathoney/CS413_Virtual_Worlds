// process player collisions
function hit_obstacle(){
	
	audio_play_sound(sound_hit, 1, 0);
	
	// change user speed state
	decrease_speed();
	
}