global.click = true;

global.num_rounds += 1;
show_debug_message("round number " + string(global.num_rounds));
ds_list_shuffle(deck);

if(global.num_rounds <= 4){
	if(global.rnd == 1){
		
		//moving the 6 cards into their positions

			//opponents cards: 0, 1, 2
				for(var i = 0; i<3; i++){
					var card_o = ds_list_find_value(deck, i);
					//if card o is not in the discard pile, otherwise find a new card o?
					show_debug_message("i = " + string(i));
					with(card_o){
						go_to_y = 128;
						go_to_x = 128*(i+3);
						depth = -i*global.num_rounds;
						face_up = false;
						audio_play_sound(global.card_sound, 50, false);
					}
					ds_list_delete(deck, i);
					alarm[1] = 130;
				}
				//alarm[1] = 30;
		}
	
	with(obj_card){
		alarm[0] = 260;
	}

	with(obj_opponent){
		alarm[0] = 290;
	}

	alarm[3] = -1;
}

alarm[4] = 50;