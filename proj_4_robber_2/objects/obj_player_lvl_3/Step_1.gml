/// @description Handles movement
left_pressed = keyboard_check_direct(vk_left);
right_pressed = keyboard_check_direct(vk_right);
jump_pressed = keyboard_check_pressed(vk_space);
down_pressed = keyboard_check_pressed(vk_down);

if( left_pressed ) {
	phy_speed_x = -3;
}
if( right_pressed ) {
	phy_speed_x = 3;
}
if( jump_pressed ) {
	phy_speed_y = -6;
}
if( down_pressed ) {
	phy_speed_x = 0;
}
