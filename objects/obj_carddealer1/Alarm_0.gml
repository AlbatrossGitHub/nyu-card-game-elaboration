with(obj_card){
	if(x > 140){
		go_to_y = room_height/2;
		go_to_x = room_width-xstart;
		picked = false;
		audio_play_sound(global.card_sound, 50, false);
	}
	//global.click = true;
	show_debug_message("MOVE");
}