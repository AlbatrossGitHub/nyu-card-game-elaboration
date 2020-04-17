if(keyboard_check_released(vk_space)){
	ds_list_shuffle(deck);
	if(global.rnd == 1){
		
		//moving the 6 cards into their positions
		
		with(obj_card){
			//opponents cards: 0, 1, 2
				for(var i = 0; i<3; i++){
					if(number = i){
						go_to_y = 128;
						go_to_x = 128*(i+3);
					}
				}
			//player's cards: 3, 4, 5
				for(var j = 3; j<6; j++){
					if(number = j){
						go_to_y = room_height-128;
						go_to_x = 128*(j);
						turn_up = true;
					}
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
if(can_score == true){
	if(global.has_picked == true){
		if(global.player_picked == global.rock && global.computer_picked == global.paper){
			global.computer_score++;
		}
		if(global.player_picked == global.rock && global.computer_picked == global.scissors){
			global.player_score++;
		}
		if(global.player_picked == global.paper && global.computer_picked == global.rock){
			global.player_score++;
		}
		if(global.player_picked == global.paper && global.computer_picked == global.scissors){
			global.computer_score++;
		}
		if(global.player_picked == global.scissors && global.computer_picked == global.rock){
			global.computer_score++;
		}
		if(global.player_picked == global.scissors && global.computer_picked == global.paper){
			global.player_score++;
		}
		can_score = false;
	}
}