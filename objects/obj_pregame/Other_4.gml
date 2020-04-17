if(room == rm_start){
	with(instance_create_layer(room_width/3, room_height-128-64, "instances", obj_buttons)){
		image_index = 1;
		function = rm_game;
	}
	with(instance_create_layer(room_width/3*2, room_height-128-64, "instances", obj_buttons)){
		image_index = 0;
		function = rm_help;
	}
}

if(room == rm_help){
	with(instance_create_layer(room_width-128, 128, "instances", obj_buttons)){
		image_index = 1;
		image_angle = 180;
		function = rm_start;
	}
}