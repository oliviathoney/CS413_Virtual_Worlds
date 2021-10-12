/// @description Insert description here
// You can write your code in this editor

global.hasArtifact = true;

x = room_width/2 - 128 - 32;
y = room_height - 32;

var ghosts = [];

for (var i = 0; i < instance_number(obj_ghost); ++i;)
{
    with(instance_find(obj_ghost,i)) {
		path_end();
		// move_towards_point(obj_player.x, obj_player.y, 1);
	}
}

