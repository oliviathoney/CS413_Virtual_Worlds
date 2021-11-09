// process player collisions
function hit_obstacle(){
	
	audio_play_sound(sound_hit, 1, 0);
	
	// change user speed state
	if(global.player_speed == player_speeds.fastest){
		global.player_speed = player_speeds.faster;
		audio_sound_pitch(global.running_sound, 1.25);
	} else if(global.player_speed == player_speeds.faster){
		global.player_speed = player_speeds.start_speed;
		audio_sound_pitch(global.running_sound, 1);
	} else if(global.player_speed == player_speeds.start_speed){
		global.player_speed = player_speeds.slower;
		audio_sound_pitch(global.running_sound, 0.75);
	} else if(global.player_speed == player_speeds.slower){
		global.player_speed = player_speeds.slowest;
		audio_sound_pitch(global.running_sound, 0.5);
	}
	
}