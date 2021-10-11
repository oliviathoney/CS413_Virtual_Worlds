/// @description Insert description here
// You can write your code in this editor


dialog_t = 0;
dialog_delta = 0.2;

var dialog_text = "You are a world-renowned ghost hunter who has been called in to retrieve a sacred artifact from a haunted palace. Your unique skill set is needed because the palace is filled with ghosts who protect the artifact. Move through the palace using the arrow keys. Avoid all ghosts, and find the artifact. Once you have the artifact, get out of the palace. But beware, you may find the ghosts will stop at nothing to keep the artifact. A previous, not-so-lucky, ghost-hunter may have perished in the halls of the palace and left their ghost gun behind. If you find it, press the space-bar to shoot. Good luck...";

dialog = dialog_create(sprite_width-40,
						(sprite_height-40),
						20, 20, 10,
						dialog_text);