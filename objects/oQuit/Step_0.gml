/// @description Menu Functionailty

if (place_meeting(x,y,oMouse))
{
	image_index = 1;	
	if (mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(sfxWoodChop8,1,false);
		scrMenuOptions(0);
	}
	
	
}

else
{
	image_index = 0;	
}
