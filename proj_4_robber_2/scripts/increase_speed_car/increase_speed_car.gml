// increase player speed when no object hit
function increase_speed_car(){
	
	// change user speed state
	if(global.player_speed == player_speeds.slowest){
		global.player_speed = player_speeds.slower;
		audio_sound_pitch(global.running_sound, 0.75);
		audio_sound_pitch(sound_gear_shift, .85);
	} else if(global.player_speed == player_speeds.slower){
		global.player_speed = player_speeds.start_speed;
		audio_sound_pitch(global.running_sound, 1);
		audio_sound_pitch(sound_gear_shift, .95);
	} else if(global.player_speed == player_speeds.start_speed){
		global.player_speed = player_speeds.faster;
		audio_sound_pitch(global.running_sound, 1.15);
		audio_sound_pitch(sound_gear_shift, 1.05);
	} else if(global.player_speed == player_speeds.faster){
		global.player_speed = player_speeds.fastest;
		audio_sound_pitch(global.running_sound, 1.25);
		audio_sound_pitch(sound_gear_shift, 1.15);
	} else {
		audio_sound_pitch(sound_gear_shift, 0);
	}
	
	audio_play_sound(sound_gear_shift,0,0);
	
}