/// @description Insert description here
// You can write your code in this editor

if(global.hasGun) {
	show_debug_message("fire");
	var lyr_instances = layer_get_id("Instances");
	var inst = instance_create_layer(x, y-20, lyr_instances, obj_bullet);
	
	inst.speed = 5;
	if(sprite_index == spr_ghost_hunter_right_gun || sprite_index == spr_ghost_hunter_walking_right_gun) {
		inst.direction = 0;
	} else if (sprite_index == spr_ghost_hunter_left_gun || sprite_index == spr_ghost_hunter_walking_left_gun) {
		inst.direction = 180;
	} else if (sprite_index == spr_ghost_hunter_back_gun || sprite_index == spr_ghost_hunter_walking_up_gun ) {
		inst.direction = 90;
	} else {
		inst.direction = 270;
	}
}