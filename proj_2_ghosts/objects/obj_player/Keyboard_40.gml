if (player_state == player_states.idle){
	move(move_direction.down);

	sprite_index = spr_ghost_hunter_walking_down;
	next_spr = spr_ghost_hunter;
}