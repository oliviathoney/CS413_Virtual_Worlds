if (player_state == player_states.idle){
	move(move_direction.up);
	
	if (global.hasGun){
		sprite_index = spr_ghost_hunter_walking_up_gun;
	} else{
		sprite_index = spr_ghost_hunter_walking_up;
	}
	
	if (global.hasGun){
		next_spr = spr_ghost_hunter_back_gun;
	} else{
		next_spr =spr_ghost_hunter_back;
	}
}