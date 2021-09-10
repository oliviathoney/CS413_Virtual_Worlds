
// get layers into vars
var lyr_grass = layer_get_id("Grass");
//var lyr_track = layer_get_id("Track");
//var lyr_instances = layer_get_id("Instances");

// field dimensions
var field_width = 10;
var field_height = 8;
var field_x_start = 16;
var field_y_start = 64;

// grass piece dimensions
var grass_width = sprite_get_width(spr_grass_1);

// Iterating along the y and x axis, we then create a grid of grass squares
var field = array_create(field_width * field_height);
for (var col=0; col<field_width; col+=1) {
	for (var row=0; row<field_height; row+=1) {
		var colrow = col + row;
		var _x = col*(grass_width) + field_x_start;
		var _y = row*(grass_width) + field_y_start;
		if (colrow%2 == 0){
			var obj_grass = obj_grass_1;
		} else {
			var obj_grass = obj_grass_2;
		}
		var inst_grass = instance_create_layer(
			_x, 
			_y,
			lyr_grass, obj_grass);
		inst_grass.hasTrack = false;
		inst_grass.xpos = _x;
		inst_grass.ypos = _y;
		field[col][row] = inst_grass;
	}
}

// create possible track array
var tracks_possible = [obj_track_bridge,
					   obj_track_curve1,
					   obj_track_curve2,
					   obj_track_curve3,
					   obj_track_curve4,
					   obj_track_horizontal,
					   obj_track_vertical];

