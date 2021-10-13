if (player_state == player_states.idle){
	move(move_direction.right);
	
	if (global.hasGun){
		sprite_index = spr_ghost_hunter_walking_right_gun;
	} else{
		sprite_index = spr_ghost_hunter_walking_right;
	}
	
	if (global.hasGun){
		next_spr = spr_ghost_hunter_right_gun;
	} else{
		next_spr =spr_ghost_hunter_right;
	}
}