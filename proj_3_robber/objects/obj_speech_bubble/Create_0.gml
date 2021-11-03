dialog_t = 0;
dialog_delta = 0.4;

var dialog_text = "We just robbed the bank! We can't celebrate yet, though. The police are on their way now. Help me get to the getaway car down the street. Just avoid all the obstacles.";

dialog = dialog_create(sprite_width-40,
						(sprite_height-40),
						20, 20, 10,
						dialog_text);
						
audio_play_sound(sound_type, 1, 1);