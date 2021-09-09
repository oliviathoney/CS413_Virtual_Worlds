var lyr_instances = layer_get_id("Instances");

var startWidth = sprite_get_width(spr_start_button);
var startHeight = sprite_get_height(spr_start_button);

var instructionWidth = sprite_get_width(spr_instructions);


var inst_start = instance_create_layer(0-startWidth,room_height-startHeight-16, lyr_instances, obj_start_button);
var inst_instructions = instance_create_layer(0-instructionWidth,16, lyr_instances, obj_instructions);


with(inst_start) {
	TweenEasyMove(0-startWidth, room_height-startHeight-16, (room_width-startWidth)/2, room_height-startHeight-16, 10, 45, EaseOutCubic);
}

with(inst_instructions) {
	TweenEasyMove(0-instructionWidth, 16, (room_width-instructionWidth)/2, 16, 5, 45, EaseOutCubic);
}