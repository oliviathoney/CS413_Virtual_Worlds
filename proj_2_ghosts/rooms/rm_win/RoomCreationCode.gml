var lyr_instances = layer_get_id("Instances");

var sprWidth = sprite_get_width(spr_you_win);
var sprHeight = sprite_get_height(spr_you_win);

// place title and buttons
var inst_you_win = instance_create_layer(0-sprWidth, 128, lyr_instances, obj_you_win);

// animate title and buttons
with(inst_you_win) {
	TweenEasyMove(0-sprWidth, 128, (room_width-sprWidth)/2 + 96, 128, 10, 45, EaseOutCubic);
}

var boxWidth = sprite_get_width(spr_win_dialog);
var boxHeight = sprite_get_height(spr_win_dialog);

// place title and buttons
var inst_dialog = instance_create_layer(0-boxWidth, room_height-boxHeight-10, lyr_instances, obj_win_dialog);

// animate title and buttons
with(inst_dialog) {
	TweenEasyMove(0-boxHeight, room_height-boxHeight-10, room_width-boxWidth - 10, room_height-boxHeight-10, 10, 45, EaseOutCubic);
}