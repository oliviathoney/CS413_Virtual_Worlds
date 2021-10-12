/// @description Initiate grid in game

var collider_tiles = layer_tilemap_get_id("tilemap_colliders");

draw_grid = false;

grid_array[0, 0] = 0;

// fill up array with grid values
for (var _x = 0; _x <= 42; _x++) {
	
	for (var _y = 0; _y <= 14; _y++) {
		
		grid_array[_x, _y] = 1;	
		
		// check for collision
		if (tilemap_get_at_pixel(collider_tiles, _x + (_x*32), _y + (_y*32))){
			grid_array[_x, _y] = 0;	
		}
		
	}
	
}

