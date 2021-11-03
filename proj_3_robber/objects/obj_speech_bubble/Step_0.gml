/// @description Update the timecode for the dialog box.

dialog_t += dialog_delta;
if (dialog_t < 0) {
	dialog_delta = 1;
	dialog_t = 0;
}

if (dialog_t > dialog.text_length) {
	dialog_delta = 0;
	dialog_t = dialog.text_length;
	alarm[0] = room_speed * 0.5;
}
