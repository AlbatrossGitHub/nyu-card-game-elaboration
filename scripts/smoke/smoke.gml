//repeat(20){
//	effect_create_above(ef_smoke, irandom_range(0, room_width), irandom_range(0, room_height), 1, c_white);
//}

global.computer_score++;
audio_play_sound(snd_lose, 60, false);

with(obj_card){
	if(y < room_height/2 && go_to_x == global.computer_coords){
		effect_create_below(ef_ring, x, y, 2, c_white);
	}
}
randomize();
audio_play_sound(choose(snd_ugh, snd_shoot), 50, false);

effect_create_above(ef_smoke, 128, 64, 1, c_white);