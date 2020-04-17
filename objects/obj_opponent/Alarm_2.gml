with(obj_card){
	if(x > 128*2){
		face_up = true;
		audio_play_sound(global.card_sound, 50, false);
	}
}

with(obj_carddealer1){
	alarm[0] = 40;
}

with(obj_carddealer1){
	alarm[3] = 90;
}