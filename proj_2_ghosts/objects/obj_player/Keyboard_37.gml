if (player_state == player_states.idle){
	move(move_direction.left);
	
	if (global.hasGun){
		sprite_index = spr_ghost_hunter_walking_left_gun;
	} else{
		sprite_index = spr_ghost_hunter_walking_left;
	}
	
	if (global.hasGun){
		next_spr = spr_ghost_hunter_left_gun;
	} else{
		next_spr = spr_ghost_hunter_left;
	}
}