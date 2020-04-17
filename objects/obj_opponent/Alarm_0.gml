randomize();

global.computer_coords = choose(128*3, 128*4, 128*5);
	
with(obj_card){
	if(face_up == false && y < room_height/2 && go_to_x == global.computer_coords){
		go_to_y = y + sprite_height;
		//audio_play_sound(global.card_sound, 50, false);
		global.computer_picked = type;
	}
}