/// @description Insert description here
// You can write your code in this editor

if (door_counter == 0){
	if (current_room == 1){
		view_visible[0] = 0;
		view_visible[1] = 1;

		x_pos = 1024 div tile_width;
		y_pos = 128 div tile_width;
		current_room = 2;
	} else if (current_room == 2){
		view_visible[0] = 1;
		view_visible[1] = 0;

		x_pos = 576 div tile_width;
		y_pos = 160 div tile_width;
		current_room = 1;
	}
	door_counter = 60;
	
	if (global.hasGun){
		sprite_index = spr_ghost_hunter_gun;
	} else{
		sprite_index = spr_ghost_hunter;
	}
}