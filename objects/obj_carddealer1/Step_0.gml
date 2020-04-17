randomize();


if(keyboard_check_released(ord("R"))){
	game_restart();
}

global.card_sound = choose(snd_card1);//, snd_card2);
//keeping score
//R = 0
//P = 1
//S = 2

//show_debug_message(string(alarm[3]))

