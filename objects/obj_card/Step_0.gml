//showing the correct sprites
if(face_up == true){
	if(type == global.paper){
		sprite_index = spr_cardpaper;
	}
	if(type == global.scissors){
		sprite_index = spr_cardscissors;
	}
	if(type == global.rock){
		sprite_index = spr_cardrock;
	}
} else {
	sprite_index = spr_cardback;
}

//movement
if(x > go_to_x+6 || x < go_to_x-6 || y > go_to_y+6 || y < go_to_y-6){
	direction = point_direction(x, y, go_to_x, go_to_y)
	wrong_location = true;
	speed = 7;
//} else if (turn_up == true){
//	face_up = true;
//	turn_up = false;
} else if(wrong_location == true){
	audio_play_sound(snd_card1, 50, false);
	wrong_location = false;
	speed = 0;
}

//card selection
if(y > room_height-128-18 && global.click == true && sprite_index != spr_cardback){
	if(global.click == true){
		if(hover == true){
			if(mouse_check_button_released(mb_left) && global.click == true){
				effect_create_above(ef_firework, mouse_x, mouse_y, 1, c_yellow);
				audio_play_sound(snd_card1, 50, false);
				alarm[1] = 60;
				//audio_play_sound(global.card_sound, 50, false);
				go_to_y = y - sprite_height;
				show_debug_message("y = " + string(go_to_y));
				picked = true;
				global.click = false; //the player can no longer click
				global.player_picked = type;
			} 
			if (picked == false && global.click == true){
				go_to_y = room_height-128-13
			}
		} else if (go_to_y == room_height-128-13){
			go_to_y = room_height-128;
		}
	} else {
		
	}
}


if(mouse_x > x-sprite_width/2 && mouse_x < x+sprite_width/2 && mouse_y > y-sprite_height/2 && mouse_y < y+sprite_height/2){
	hover = true;
} else {
	hover = false;
}

if(visible == true){
	if(speed == 7 || hover == true){
		effect_create_below(effect, x, y, effect_size, color);
	}
}

if(y > room_height-128-18 && color == c_yellow && global.click == true && sprite_index != spr_cardback && hover == true){
	effect = ef_ring;
} else if(effect == ef_ring){
	effect = ef_smoke;
}