/// @description Show score vs hiscore


draw_set_font(fontTarget); // select font to use

if (score == hiscore) // if new hiscore or is matched
{
	draw_text((room_width/2) - 195, (room_height/2) -160, "NICE! NEW HIGHSCORE!");
}


draw_text((room_width/2) - 200, (room_height/2) -100, "SCORE");
draw_text((room_width/2) - 200, (room_height/2) - 36 , score);

draw_text((room_width/2), (room_height/2) - 100, "HIGHSCORE");
draw_text((room_width/2), (room_height/2) - 36, hiscore);


draw_text((room_width/2) - 200, (room_height/2) +64 , "[Press Enter to Continue]");
