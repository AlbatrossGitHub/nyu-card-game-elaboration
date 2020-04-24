draw_set_font(fnt_score);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(32, 32, @"Computer
Score: " + string(global.computer_score));
draw_set_valign(fa_bottom);
c = c_yellow;
draw_text_color(32, room_height-32, @"Player
Score: " + string(global.player_score), c, c, c, c, 1);