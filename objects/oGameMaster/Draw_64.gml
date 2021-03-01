/// @description Heart Display


draw_text(64,64, "SCORE: ");
draw_text(200,64, score);
// draw_text(480,48,global.Time);

draw_text(64, 704, "HIGHSCORE: ");
draw_text(270, 704, highscore);

if (global.Hearts == 3) 
{
	draw_sprite(sHeart,currentHeartFrame,832,64);
	draw_sprite(sHeart,currentHeartFrame+1,896,64);
	draw_sprite(sHeart,currentHeartFrame+2,960,64);
}

if (global.Hearts == 2) 
{
	draw_sprite(sHeart,currentHeartFrame+1,896,64);
	draw_sprite(sHeart,currentHeartFrame+2,960,64);
}

if (global.Hearts == 1) 
{
	draw_sprite(sHeart,currentHeartFrame+2,960,64);
}

if (global.Hearts < 1)
{
	draw_text_color((room_width/2)-120,(room_height/2) -30,"GAME OVER",c_yellow,c_yellow,c_yellow,c_yellow,1);	
	draw_text_color((room_width/2) -200, (room_height/2), "[Press Enter to Continue]", c_yellow,c_yellow,c_yellow,c_yellow,1);
}