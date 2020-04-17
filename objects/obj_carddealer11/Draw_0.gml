draw_set_font(fnt_score);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(32, 32, string(global.computer_score));
draw_set_valign(fa_bottom);
draw_text(32, room_height-32, string(global.player_score));