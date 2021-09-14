var lyr_instances = layer_get_id("Instances");

var podiumWidth = sprite_get_width(spr_podium);
var podiumHeight = sprite_get_height(spr_podium);

var inst_podium = instance_create_layer((room_width-podiumWidth)/2, 
										room_height-podiumHeight-64, 
										lyr_instances, 
										obj_podium);
										
var winnerWidth = sprite_get_width(spr_winner_blue);										
										
var inst_winner_blue = instance_create_layer((room_width-winnerWidth)/2,
											  room_height-podiumHeight-96,
											  lyr_instances,
											  obj_winner_blue);
var inst_winner_green = instance_create_layer((room_width-winnerWidth)/2 - 64,
											  room_height-podiumHeight-80,
											  lyr_instances,
											  obj_winner_green);
var inst_winner_red = instance_create_layer((room_width-winnerWidth)/2 + 64,
											  room_height-podiumHeight-64,
											  lyr_instances,
											  obj_winner_red);											  
										
var inst_blue_car = instance_create_layer(room_width + 32,
										  room_height/2,
										  lyr_instances,
										  obj_blue_car);
var inst_green_car = instance_create_layer(room_width + 32,
										  room_height/2 + 16,
										  lyr_instances,
										  obj_green_car);
var inst_red_car = instance_create_layer(room_width + 32,
										  room_height/2 + 32,
										  lyr_instances,
										  obj_red_car);
with(inst_blue_car) {
	TweenEasyMove(room_width+32, room_height/2, 8, room_height/2, 10, 45, EaseOutCubic);
}
with(inst_green_car) {
	TweenEasyMove(room_width+32, room_height/2 + 16, 16, room_height/2 + 16, 20, 45, EaseOutCubic);
}
with(inst_red_car) {
	TweenEasyMove(room_width+32, room_height/2 + 32, 24, room_height/2 + 32, 30, 45, EaseOutCubic);
}