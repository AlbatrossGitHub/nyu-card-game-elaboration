//player's cards: 3, 4, 5
	for(var j = 0; j<3; j++){ //3, 6 vs 0, 3
		var card_p = ds_list_find_value(deck, j);
		//if card p is not in the discard pile, otherwise find a new card p?
		//show_debug_message("j = " + string(j));
		//show_debug_message("list size = " + string(ds_list_size(deck)));
		with(card_p){
			go_to_y = room_height-128;
			go_to_x = 128*(j+3);
			face_up = false;
			effect_clear();
			color = c_yellow;
			audio_play_sound(global.card_sound, 50, false);
			depth = -j*global.num_rounds;
			face_up = false;
					
		}
					
		ds_list_delete(deck, j);
	}
if(global.num_rounds > 3){
	for(var k = 0; k<3; k++){
		var card_t = ds_list_find_value(deck, k);
		if(instance_exists(card_t)){
			with(card_t){
				visible = false;
			}
		}
	}
}


//___________________________________________
//############################################################################################
//FATAL ERROR in
//action number 1
//of Alarm Event for alarm 1
//for object obj_carddealer1:

//DoConv :1: illegal undefined/null use
// at gml_Object_obj_carddealer1_Alarm_1 (line 5) -                                    with(card_p){
//############################################################################################
//--------------------------------------------------------------------------------------------
//stack frame is
//gml_Object_obj_carddealer1_Alarm_1 (line 5)
