// manage camera position
var view_width = camera_get_view_height(view_camera[0]);
var vx = camera_get_view_y(view_camera[0]);
var offset = 0;//392;
var width_offset = 0; // was 1024

if ((y - view_width/2 + offset) < room_height - width_offset) {
	camera_set_view_pos(view_camera[0],
						0,
						y - view_width/2 + offset);
} else {
	camera_set_view_pos(view_camera[0],
						0,
						room_height - width_offset);
}