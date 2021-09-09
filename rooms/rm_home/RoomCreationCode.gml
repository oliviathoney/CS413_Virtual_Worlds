var lyr_instances = layer_get_id("Instances");

var titleWidth = sprite_get_width(spr_title);
var titleHeight = sprite_get_height(spr_title);

var startWidth = sprite_get_width(spr_start_button);
var startHeight = sprite_get_height(spr_start_button);

var inst_title = instance_create_layer(0-titleWidth, 16, lyr_instances, obj_title);
var inst_start = instance_create_layer(0-startWidth, (16*3) + titleHeight, lyr_instances, obj_start_button);
var inst_help = instance_create_layer(0-startWidth, (16*4) + startHeight + titleHeight, lyr_instances, obj_help_button);

with(inst_title) {
	TweenEasyMove(0-titleWidth, 16, (room_width-titleWidth)/2, 16, 10, 45, EaseOutCubic);
}

with(inst_start) {
	TweenEasyMove(0-startWidth, (16*3) + titleHeight, (room_width-startWidth)/2, (16*3) + titleHeight, 30, 45, EaseOutCubic);
}

with(inst_help) {
	TweenEasyMove(0-startWidth, (16*4) + startHeight + titleHeight, (room_width-startWidth)/2, (16*4) + startHeight + titleHeight, 35, 45, EaseOutCubic);
}