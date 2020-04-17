if(global.num_rounds == 5){
	with(obj_card){
		effect_clear();
		color = c_white;
		effect_size = 2;
		effect = ef_smoke;
		go_to_x = xstart;
		go_to_y = ystart;
		face_up = false;
		audio_play_sound(global.card_sound, 50, false);
	}
	alarm[5] = 150;
}

