global.player_score++;
audio_play_sound(snd_win, 60, false);

//repeat(20){
//	effect_create_above(ef_spark, irandom_range(0, room_width), irandom_range(0, room_height), 2, c_yellow);
//}

with(obj_card){
	if(picked == true){
		effect_create_below(ef_ring, x, y, 2, c_yellow);
	}
}

repeat(10)
    {
    effect_create_above(ef_firework, random(room_width), random(room_height), choose(0, 1, 2), make_colour_hsv(random(255), 255, 255));
    }
	
randomize();
audio_play_sound(choose(snd_yes1, snd_yes2, snd_aha, snd_oh_yeah), 50, false);

effect_create_above(ef_firework, 128+96, room_height-64, 1, c_yellow);