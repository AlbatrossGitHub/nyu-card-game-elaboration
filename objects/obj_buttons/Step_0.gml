image_xscale = size;
image_yscale = size;

if(mouse_x > x-sprite_width/2 && mouse_x < x+sprite_width/2 &&
	mouse_y > y-sprite_height/2 && mouse_y < y+sprite_height/2){
	image_alpha = .5;
		if(mouse_check_button_released(mb_left)){
			room_goto(function);
		}
} else {
	image_alpha = 1;
}