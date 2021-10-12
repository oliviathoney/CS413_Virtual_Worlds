if (!hit){
	audio_play_sound(sound_player_hit, 1, 0);
	health -= 1;
	
	global.lives -= 1;
	if (global.lives == 2) {
		global.inst_lives_1.sprite_index = spr_2lives;
		global.inst_lives_2.sprite_index = spr_2lives;
	} else if (global.lives == 1) {
		global.inst_lives_1.sprite_index = spr_2lives;
		global.inst_lives_2.sprite_index = spr_2lives;
	} else {
		room_goto(rm_home);
	}
	
	hit = true;
	counter = 0;
}