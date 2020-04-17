randomize();

//if(keyboard_check_released(vk_space)){
//	alarm[0] = 290;
//}

//your card turns face up if the player has picked

with(obj_card){
	if(global.has_picked == true && x > 128*2 && y > 140){
		face_up = true;
		if(global.dosound == true){
			audio_play_sound(global.card_sound, 50, false);
			global.dosound = false;
		}
	}
}