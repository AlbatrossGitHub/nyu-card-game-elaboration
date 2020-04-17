with(obj_card){
	if(x > 128*2 && y > 140){
		face_up = true;
		//audio_play_sound(global.card_sound, 50, false);
	}
}

if(global.has_picked == true){
	if(global.player_picked == global.rock && global.computer_picked == global.paper){
		smoke();
	}else if(global.player_picked == global.rock && global.computer_picked == global.scissors){
		stars();
	}else if(global.player_picked == global.paper && global.computer_picked == global.rock){
		stars();
	}else if(global.player_picked == global.paper && global.computer_picked == global.scissors){
		smoke();
	}else if(global.player_picked == global.scissors && global.computer_picked == global.rock){
		smoke();
	}else if(global.player_picked == global.scissors && global.computer_picked == global.paper){
		stars();
	}else{
		effect_create_above(ef_smoke, room_width/2, room_height/2, 2, c_white);
		audio_play_sound(snd_tie, 50, false);
	}
	global.has_picked = false;
	with(obj_card){
		effect = ef_smoke;
	}

}

alarm[2] = 30;