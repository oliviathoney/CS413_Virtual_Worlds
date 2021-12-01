// manage camera position
var view_width = camera_get_view_width(view_camera[0]);
var vx = camera_get_view_x(view_camera[0]);
var offset = 392;

if ((x - view_width/2 + offset) < room_width - 1024) {
	camera_set_view_pos(view_camera[0],
						x - view_width/2 + offset,
						0);
} else {
	camera_set_view_pos(view_camera[0],
						room_width - 1024,
						0);
}
