// only start car moving after start counter has exhausted
global.start_counter -= 1;
if(global.start_counter > 0){	
	return;
}

// move car
x += car_speed;

// control volume of siren
var distance_from_player = global.player_x - x;
if(distance_from_player >= 32 && distance_from_player < 64){
	audio_sound_gain(global.siren_sound, 0.9, 500);
} else if(distance_from_player >= 64 && distance_from_player < 96){
	audio_sound_gain(global.siren_sound, 0.8, 500);
} else if(distance_from_player >= 96 && distance_from_player < 192){
	audio_sound_gain(global.siren_sound, 0.7, 500);
} else if(distance_from_player >= 192 && distance_from_player < 256){
	audio_sound_gain(global.siren_sound, 0.6, 500);
} else if(distance_from_player >= 256 && distance_from_player < 352){
	audio_sound_gain(global.siren_sound, 0.5, 500);
} else if(distance_from_player >= 352 && distance_from_player < 448){
	audio_sound_gain(global.siren_sound, 0.4, 500);
} else if(distance_from_player >= 448 && distance_from_player < 544){
	audio_sound_gain(global.siren_sound, 0.3, 500);
} else if(distance_from_player >= 544){
	audio_sound_gain(global.siren_sound, 0.2, 500);
} else {
	audio_sound_gain(global.siren_sound, 1, 500);
}


