/// @description Insert description here
// You can write your code in this editor

global.hasArtifact = true;

x = room_width/2 - 128 - 32;
y = room_height - 32;

var lyr_instances = layer_get_id("Instances");

var another_inst = instance_create_layer(room_width - 128 - 32, room_height - 32, lyr_instances, obj_artifact);

var ghosts = [];

for (var i = 0; i < instance_number(obj_ghost); ++i;)
{
    with(instance_find(obj_ghost,i)) {
		path_end();
	}
}

