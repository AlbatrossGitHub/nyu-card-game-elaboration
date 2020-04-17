if(keyboard_check_released(vk_space)){
	ds_list_shuffle(deck);
	if(global.rnd == 1){
		
		//moving the 6 cards into their positions

			//opponents cards: 0, 1, 2
				for(var i = 0; i<3; i++){
					var card_o = ds_list_find_value(deck, i);
					//if card o is not in the discard pile, otherwise find a new card o?
					with(card_o){
						go_to_y = 128;
						go_to_x = 128*(i+3);
						depth = -i;
					}
				}
			//player's cards: 3, 4, 5
				for(var j = 3; j<6; j++){
					var card_p = ds_list_find_value(deck, j);
					//if card p is not in the discard pile, otherwise find a new card p?
					with(card_p){
						go_to_y = room_height-128;
						go_to_x = 128*(j);
						face_up = false;
						depth = -j;
					}
				}
		}
	}

if(keyboard_check_released(ord("R"))){
	game_restart();
}

//keeping score
//R = 0
//P = 1
//S = 2