
// get layers into vars
var lyr_grass = layer_get_id("Grass");
var lyr_track = layer_get_id("Track");
var lyr_instances = layer_get_id("Instances");

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
							_x, _y, lyr_grass, obj_grass);
		if ((row == 1 && col == 0) || (row == field_height-1 && col == field_width - 2)) {
			inst_grass.hasTrack = true;
		} else {
			inst_grass.hasTrack = false;
		}
		inst_grass.xpos = _x;
		inst_grass.ypos = _y;
		field[col][row] = inst_grass;
	}
}



// initiate flags, start and end
var flag_width = sprite_get_width(spr_checkered_flag);
var inst_start = instance_create_layer(
					field_x_start, field_y_start,
					lyr_instances, obj_start_flag);
var inst_finish = instance_create_layer(
					field_x_start + (field_width - 1) * flag_width, 
					field_y_start + (field_height - 1) * flag_width,
					lyr_instances, obj_checkered_flag);
					

create_track(field_x_start, field_y_start+32, spr_track_start);
create_track(field_x_start + (field_width - 1) * flag_width - 32, field_y_start + (field_height - 1) * flag_width, spr_track_finish);

// initiate car
var inst_car = instance_create_layer(
					field_x_start, field_y_start,
					lyr_instances, obj_blue_car);

// create possible track array
global.tracks_possible = [spr_track_curve1,
						  spr_track_curve2,
						  spr_track_curve3,
						  spr_track_curve4,
						  spr_track_horizontal,
						  spr_track_vertical,
						  spr_track_horizontal,
						  spr_track_vertical];

randomize();
global.next_track = global.tracks_possible[irandom(7)];
global.current_track = global.tracks_possible[irandom(7)];

	
// create queued track instance at top left
global.queued_track = instance_create_layer(
	32,
	16,
	lyr_track, obj_queue_track);
	

global.queued_next = instance_create_layer(
	16,
	16,
	lyr_track, obj_next_in_queue_track);

queue_display();