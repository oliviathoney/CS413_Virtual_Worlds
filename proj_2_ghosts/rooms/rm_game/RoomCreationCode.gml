var lyr_instances = layer_get_id("Instances");

var door_1 = instance_create_layer(576, 96, lyr_instances, obj_door);

global.doors = [door_1];

randomize();

// play background music
audio_play_sound(sound_theme_song, 0, true);

global.inst_lives_1 = instance_create_layer(room_width/2 - 128, room_height - 32, lyr_instances, obj_lives);
global.inst_lives_2 = instance_create_layer(room_width - 128, room_height - 32, lyr_instances, obj_lives);

global.hasArtifact = false;
global.hasGun = false;
global.lives = 3;
