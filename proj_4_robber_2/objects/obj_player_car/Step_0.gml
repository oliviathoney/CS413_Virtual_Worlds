if(!started){
	global.running_sound = audio_play_sound(sound_car, 1, 1);
	// global.siren_sound = audio_play_sound(sound_siren, 1, 1);
	started = true;
}

if(global.timeAfterWin > 0) {
	global.timeAfterWin -= 1;
	return;
}

if(global.timeAfterWin == 0) {
	room_goto(rm_game_lvl_3);
}

if(global.player_state = player_states.caught) {
	if(alarm[0] == -1) {
		alarm[0] = room_speed * 2;
		var lyr = layer_get_id("Instances_1");
		var police1 = instance_create_layer(x-500, y-64, lyr, obj_police_dummy);
		with(police1) {
			TweenEasyMove(x, y, x + 460, y, 5, 20, EaseOutCubic);
		}
		
		var police2 = instance_create_layer(x-500, y, lyr, obj_police_dummy);
		with(police2) {
			TweenEasyMove(x, y, x + 340, y, 10, 10, EaseOutCubic);
		}
		
		var police3 = instance_create_layer(x-500, y+64, lyr, obj_police_dummy);
		with(police3) {
			TweenEasyMove(x, y, x + 470, y, 15, 15, EaseOutCubic);
		}
	}
	return;
}

// set speed values for each speed level
if(global.player_speed == player_speeds.fastest) {
	player_speed = 10;
} else if(global.player_speed == player_speeds.faster) {
	player_speed = 8;
} else if(global.player_speed == player_speeds.start_speed) {
	player_speed = 6;
} else if(global.player_speed == player_speeds.slower) {
	player_speed = 4;
} else if(global.player_speed == player_speeds.slowest) {
	player_speed = 2;
} else {
	player_speed = 0;
}

// move player by x speed
x += player_speed;
global.player_x = x;

// conduct vertical movement
if (global.player_state == player_states.moving){
	
	walk_time += delta_time / 1000000;
	
	var curr_time = walk_time / walk_length;
	
	if (curr_time >= 1) {
		curr_time = 1;
		
		walk_time = 0;
		global.player_state = player_states.running;
	}
	
	var _y = lerp(y_start, y_end, curr_time);
	
	y = _y * tile_width;
}

