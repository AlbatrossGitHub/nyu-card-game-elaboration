if(room == rm_start){
	draw_set_font(fnt_score);
	draw_set_halign(fa_middle);
	draw_text_transformed(room_width/2, 128, "Rochambeau", 3, 3, 0);
	draw_text(room_width/2, 128, @"


	Created by Josh Finkel
	Music by Kevin Macleod");
}

if(room == rm_help){
	draw_set_font(fnt_score);
	draw_set_halign(fa_left);
	draw_text_transformed(32, 32, @"Goal:
		Win the most points.

	How to play:
		You will be dealt 3 cards.
		Each card is either a rock card, paper card, or
		scissors card.
		You and your opponent (the computer) will each
		select one card.
		You can select your card by clicking on it.
		Rock beats scissors, scissors beats paper, and
		paper beats rock.
		Whoever’s card beats the other’s card wins a point.
		If two of the same card are selected, it is a tie.
		3 more cards will be dealt.
		Play for as long as you want.", .9, .9, 0);
}