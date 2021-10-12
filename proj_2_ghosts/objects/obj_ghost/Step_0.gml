/// @description Insert description here
// You can write your code in this editor
if(global.hasArtifact) {
	if(location == obj_player.current_room) {
		move_towards_point(obj_player.x, obj_player.y, .5);
	} else {
		speed = 0;
	}
} 