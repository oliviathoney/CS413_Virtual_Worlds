/// @description Insert description here
// You can write your code in this editor

function move(_x, _y, direc){
	
	var hit = 0;
	
	// bad system fix later
	if(direc == "left"){
		hit += tilemap_get_at_pixel(collider_tiles, bbox_left, bbox_top);
		hit += tilemap_get_at_pixel(collider_tiles, bbox_left, bbox_bottom);
	} else if(direc == "right"){
		hit += tilemap_get_at_pixel(collider_tiles, bbox_right, bbox_top);
		hit += tilemap_get_at_pixel(collider_tiles, bbox_right, bbox_bottom);
	} else if(direc == "up"){
		hit += tilemap_get_at_pixel(collider_tiles, bbox_left, bbox_top);
		hit += tilemap_get_at_pixel(collider_tiles, bbox_right, bbox_top);
	} else if(direc == "down"){
		hit += tilemap_get_at_pixel(collider_tiles, bbox_left, bbox_bottom);
		hit += tilemap_get_at_pixel(collider_tiles, bbox_right, bbox_bottom);
	}
	
	if (hit <= 0) {
		x += _x;
		y += _y;
	}
}

function step_up(){
	sprite_index = spr_ghost_hunter_back;
	
	if (!(left_down || right_down || down_down)){
		move(0, -movement_speed, "up");
	}
}

function step_down(){
	sprite_index = spr_ghost_hunter;
	
	if (!(left_down || right_down || up_down)){
		move(0, movement_speed, "down");
	}
}

function step_left(){
	sprite_index = spr_ghost_hunter_left;
	
	if (!(up_down || right_down || down_down)){
		move(-movement_speed, 0, "left");
	}
}

function step_right(){
	sprite_index = spr_ghost_hunter_right;
	
	if (!(left_down || up_down || down_down)){
		move(movement_speed, 0, "right");
	}
}