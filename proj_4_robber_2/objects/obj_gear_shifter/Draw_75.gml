if(global.player_speed == player_speeds.slower){
	draw_sprite_ext(spr_gear_shifter, 1, 40, 630, 1.5, 1.5, 0, c_white, 1);
} else if(global.player_speed == player_speeds.start_speed){
	draw_sprite_ext(spr_gear_shifter, 2, 40, 630, 1.5, 1.5, 0, c_white, 1);
} else if(global.player_speed == player_speeds.faster){
	draw_sprite_ext(spr_gear_shifter, 3, 40, 630, 1.5, 1.5, 0, c_white, 1);
} else if(global.player_speed == player_speeds.fastest){
	draw_sprite_ext(spr_gear_shifter, 4, 40, 630, 1.5, 1.5, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_gear_shifter, 0, 40, 630, 1.5, 1.5, 0, c_white, 1);
}