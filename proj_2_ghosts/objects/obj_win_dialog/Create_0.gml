/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


dialog_t = 0;
dialog_delta = 0.2;

var dialog_text = "Congratualations! You successfully retrived the artifact from the haunted palace. YOU WIN!";

dialog = dialog_create(sprite_width-40,
						(sprite_height-40),
						20, 20, 10,
						dialog_text);