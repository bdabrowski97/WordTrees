/// @description Close Box When Clicked

if (place_meeting(x,y,oMouse))
{
	if (mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(sfxWoodChop8,1,false);
		instance_destroy();	
	}
	
}
