var lyr_instances = layer_get_id("Instances");

var door_1 = instance_create_layer(576, 96, lyr_instances, obj_door);
var door_2 = instance_create_layer(1280, 64, lyr_instances, obj_door);

global.doors = [door_1, door_2];

randomize();

// play background music
audio_play_sound(sound_theme_song, 0, true);