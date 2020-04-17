randomize();

//i = 0;

y = room_height/2;

global.max_cards_in_deck = 24;

deck = ds_list_create();

//enumerator for card types
global.rock = 0;
global.paper = 1;
global.scissors = 2;

for(var counter = 0; counter < global.max_cards_in_deck; counter++){ //it will do this code 24 times
	
	var new_card = instance_create_layer(x, y, "instances", obj_card); //create a new instance of our card object
	
	//define what type of card it should be
	//make sure we have equal numbers of rock, paper, and scissors
	
	new_card.type = floor(3 * counter / global.max_cards_in_deck); //y = round(3x/24) (desmos)
	if(new_card.type = global.rock){
		show_debug_message("ROCK");
	} else if(new_card.type = global.paper){
		show_debug_message("PAPER");
	} else if(new_card.type = global.scissors){
		show_debug_message("SCISSORS");
	}
	new_card.face_up = false;
	new_card.y -= counter-10;	//lay the deck of cards out so they look like a stack
	new_card.number = counter;
	
	ds_list_add(deck, new_card);
	
	ds_list_shuffle(deck);
}