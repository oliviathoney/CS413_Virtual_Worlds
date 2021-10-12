if (draw_grid) {
	for (var _x = 0; _x <= 42; _x++) {
		for (var _y = 0; _y <= 14; _y++) {
			if (grid_array[_x, _y] == 1){
				draw_sprite_ext(spr_grid_tile, 0, 
								x + (_x*32), y + (_y*32),
								1, 1, 0, c_white, 0.8);
			}
		}
	}	
}