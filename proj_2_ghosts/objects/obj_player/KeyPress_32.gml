/// @description Insert description here
// You can write your code in this editor

if(global.hasGun) {
	show_debug_message("fire");
	var lyr_instances = layer_get_id("Instances");
	var inst = instance_create_layer(x, y, lyr_instances, obj_bullet);
	
	inst.speed = 5;
	if(sprite_index == 19 || sprite_index == 16) {
		inst.direction = 270;
	} else if (sprite_index == 10 || sprite_index == 11) {
		inst.direction = 90;
	} else if (sprite_index == 28 || sprite_index == 18 ) {
		inst.direction = 180;
	} else {
		inst.direction = 0;
	}
}