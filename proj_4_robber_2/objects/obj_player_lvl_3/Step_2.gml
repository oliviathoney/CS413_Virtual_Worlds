// manage camera position
var view_width = camera_get_view_height(view_camera[0]);
var vx = camera_get_view_y(view_camera[0]);
var offset = 0;//392;
var width_offset = 0; // was 1024

var min_camera_h = 3136;
var max_camera_h = 1086;

var post_y = y - view_width/2 + offset;

if (post_y > min_camera_h){
	post_y = min_camera_h;
}

if (post_y < max_camera_h){
	post_y = max_camera_h;
}

if ((y - view_width/2 + offset) < room_height - width_offset) {
	camera_set_view_pos(view_camera[0],
						0,
						post_y);
} else {
	camera_set_view_pos(view_camera[0],
						0,
						room_height - width_offset);
}