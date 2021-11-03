with(instance_find(obj_open_door, 0)){
	sprite_index = spr_open_door;
}

var lyr_instances = layer_get_id("Instances_1");
var inst_robber = instance_create_layer(475, 328, lyr_instances, obj_robber);

with(inst_robber) {
	image_xscale = 1.5;
	image_yscale = 1.5;
	TweenEasyMove(x, y, 592, y, 0, 45, EaseInSine);
}