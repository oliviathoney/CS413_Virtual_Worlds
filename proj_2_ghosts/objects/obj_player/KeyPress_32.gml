/// @description Insert description here
// You can write your code in this editor

if(global.hasGun) {
	show_debug_message("fire");
	var lyr_instances = layer_get_id("Instances");
	var inst = instance_create_layer(x, y, lyr_instances, obj_bullet);
	
	inst.speed = 5;
	if(sprite_index == spr_ghost_hunter_right || sprite_index == spr_ghost_hunter_walking_right) {
		inst.direction = 0;
	} else if (sprite_index == spr_ghost_hunter_left || sprite_index == spr_ghost_hunter_walking_left) {
		inst.direction = 180;
	} else if (sprite_index == spr_ghost_hunter_back || sprite_index == spr_ghost_hunter_walking_up ) {
		inst.direction = 90;
	} else {
		inst.direction = 270;
	}
}