if (player_state == player_states.idle){
	move(move_direction.up);

	sprite_index = spr_ghost_hunter_walking_up;
	next_spr = spr_ghost_hunter_back;
}