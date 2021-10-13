if (player_state == player_states.idle){
	move(move_direction.down);
	
	if (global.hasGun){
		sprite_index = spr_ghost_hunter_walking_down_gun;
	} else{
		sprite_index = spr_ghost_hunter_walking_down;
	}
	
	if (global.hasGun){
		next_spr = spr_ghost_hunter_gun;
	} else{
		next_spr =spr_ghost_hunter;
	}
}